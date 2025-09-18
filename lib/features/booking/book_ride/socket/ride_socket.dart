import 'dart:async';
import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import '../../../../util/api/api_routes.dart';
import '../../../../util/variable.dart';
import '../provider/ride_data.dart';
import 'socket_m.dart';
part 'ride_socket.g.dart';

@Riverpod(keepAlive: true)
Stream<SocketM> ridSocket(final Ref ref, final String iD) async* {
  if (userDetail?.accessToken == null) {
    yield* Stream.error("User not logged in");
    return;
  }

  // Future.delayed(const Duration(minutes: 1), () {
  // yield* Stream.error("Socket and controller disposed");
  //  });
  if (finshedRideId.contains(iD)) {
    //    rideRequest = null;
    log(name: "Critical", 'Socket and controller disposed');
    return;
  }

  final controller = StreamController<SocketM>();
  late io.Socket rideSocket;
  bool isDisposed = false;
 // Timer.periodic(Duration(seconds: 3), (c) => ref.invalidate(rideDataProvider(iD)));
  try {
    log('Connecting to ride socket for rideId: $iD', name: "Socket");

    rideSocket =
        io.io(
            Api.rideSocketUrl,
            io.OptionBuilder()
                .setTransports(['websocket'])
                .setExtraHeaders({'authorization': userDetail!.accessToken})
                .setReconnectionAttempts(5)
                .setReconnectionDelay(1000)
                .setReconnectionDelayMax(5000)
                .setRandomizationFactor(0.5)
                // do *not* call setTimeout here – that is only the initial connect timeout
                .enableAutoConnect()
                .build(),
            // ..addAll({
            //   'pingInterval': 5000, // 5 s
            //   'pingTimeout': 12000, // 12 s
            // }),
          )
          // Set up event handlers
          ..connect()
          ..onConnect((_) {
            log('Socket connected for ride: $iD', name: "Socket");
            // Optionally emit a join event or confirmation
            // rideSocket.emit('join_ride', {'rideId': iD});
          })
          ..onConnectError((data) {
            log('Socket connect error: $data', name: "Socket");
            if (!isDisposed) {
              controller.addError('Connection failed: $data');
            }
          })
          ..onDisconnect((data) {
            log('Socket disconnected: $data', name: "Socket");
            // Don't treat disconnection as fatal error - let it reconnect
          })
          ..onError((data) {
            log('Socket error: $data', name: "Socket");
            if (!isDisposed) {
              controller.addError('Socket error: $data');
            }
          })
          ..onReconnect((attemptNumber) {
            log('Socket reconnected after $attemptNumber attempts', name: "Socket");
            // Optionally re-join the ride room
            // rideSocket.emit('join_ride', {'rideId': iD});
          })
          ..onReconnectAttempt((attemptNumber) {
            log('Socket reconnecting: attempt $attemptNumber', name: "Socket");
          })
          ..onReconnectFailed((data) {
            log('Socket reconnect failed: $data', name: "Socket");
            if (!isDisposed) {
              controller.addError('Reconnection failed after multiple attempts');
            }
          })
          ..on("on_error", (error) {
            log('Socket on_error:', error: error, name: "Socket");
            if (!isDisposed) {
              controller.addError('Server error: $error');
            }
          })
          ..on('ride_$iD', (data) {
            if (isDisposed) return;

            try {
              final socketM = SocketM.fromJson(data);
              log('Received ride update: $data', name: "Socket");

              if (socketM.isRideUpdated ?? true) {
                ref.invalidate(rideDataProvider(iD));
              }

              controller.add(socketM);
            } catch (e, st) {
              log('Error parsing ride data:', error: e, stackTrace: st, name: "Socket");
              if (!isDisposed) {
                controller.addError('Data parsing error: $e');
              }
            }
          })
          // Add ping/pong handlers for debugging
          ..on('ping', (_) {
            log('Received ping from server', name: "Socket");
          })
          ..on('pong', (data) {
            log('Received pong from server: $data', name: "Socket");
          });

    ref.onDispose(() {
      log("dispose", name: "dispx");
      isDisposed = true;
      rideRequest = null;
      rideId = null;

      try {
        rideSocket
          ..off('ride_$iD')
          ..off('on_error')
          ..off('ping')
          ..off('pong')
          ..disconnect()
          ..close()
          ..dispose();
      } catch (e) {
        log('Error disposing socket:', error: e, name: "Socket");
      }

      controller.close();
      log('Socket and controller disposed for ride: $iD', name: "Socket");
    });

    yield* controller.stream;
  } catch (e, st) {
    log('Exception in ridSocket: ', name: "Socket", error: e, stackTrace: st);
    isDisposed = true;
    await controller.close();
  }
}

// Optional: Add a connection status provider
@Riverpod(keepAlive: true)
class RideSocketConnection extends _$RideSocketConnection {
  @override
  String build(String rideId) => 'disconnected';

  void updateStatus(String status) {
    state = status;
  }
}
