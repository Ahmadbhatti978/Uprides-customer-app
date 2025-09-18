import 'dart:async';
import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import '../../features/home/repo/location_repository.dart';
import '../../util/api/api_routes.dart';
import '../../util/utils.dart';
import '../../util/variable.dart';
import '../message.dart';
import '../model/coordinate.dart';

class SocketManager {
  SocketManager() {
    _socket =
        io
            .io(
              Api.chatSocketUrl,
              io.OptionBuilder().setTransports(<String>['websocket']).setExtraHeaders(<String, String>{
                'authorization': 'Bearer ${userDetail?.accessToken}',
              }).build(),
            )
            .connect();

    _socket
      ..onConnect((final z) => _statusController.add('connected $z'))
      ..onConnectError((final data) => _statusController.add('error: connect error $data'))
      ..onDisconnect((final data) => _statusController.add('disconnected $data'))
      ..onError((final data) => _statusController.add('error: general error $data'))
      ..onReconnect((final data) => _statusController.add('reconnected $data'))
      ..onReconnectAttempt((final data) => _statusController.add('reconnecting $data'))
      ..onReconnectFailed((final data) => _statusController.add('reconnect failed $data'))
      ..on(l10n.error, (final data) => _statusController.add('Error received: $data'))
      ..on('getMessage', (final data) => _messageController.add(Message.fromJson(data)))
      ..on('userStatusUpdate', (final data) {
        log('userStatusUpdate:  $data', name: "Socket");
        _onlineStatusController.add(data['online'] ?? false);
      });
    // ..on('onlineUsers', (final data) {
    //   log('onlineUsers: ${data.toString()}');
    // })
    // ..on('userOnlineStatusChange', (final data) {
    //   log('userOnlineStatusChange: ${data.toString()}');
    //   _onlineStatusController.add(data['online'] ?? false);
    // });
  }

  late final io.Socket _socket;
  final StreamController<Message> _messageController = StreamController<Message>.broadcast();
  final StreamController<String> _statusController = StreamController<String>.broadcast();
  final StreamController<bool> _onlineStatusController = StreamController<bool>.broadcast();

  Stream<Message> get messageStream => _messageController.stream;
  Stream<String> get statusStream => _statusController.stream;
  Stream<bool> get onlineStatusStream => _onlineStatusController.stream;

  void dispose() {
    _socket
      ..off('getMessage')
      ..off(l10n.error)
      ..off('getOnlineStatus')
      ..off('userLocationUpdate')
      ..off('messageSeen')
      ..off('connect')
      ..dispose();
    // _messageController.close();
    // _statusController.close();
  }

  void rideUpdateOff(final String id) => _socket.off(id);

  void sendPosition() {
    LocationRepository.getPositionStream().listen(
      (final Position position) {
        currentCoordinate = Coordinate(latitude: position.latitude, longitude: position.longitude);
        //    log('pos=>$position');
        _socket.emit('userLocationUpdate', <String, Map<String, double>>{
          'location': <String, double>{'longitude': position.longitude, 'latitude': position.latitude},
        });
      },
      onError: (final error) {
        log(error.toString());
      },
    );
  }

  void messageSeen(final Map<String, dynamic> messageData) => _socket.emit('messageSeen', messageData);

  void sendMessage(final String message, final String conversationId, final String receiver, final Attachment? attachment) {
    final Message result = Message(
      conversationId: conversationId,
      text: message,
      sender: guser?.id ?? '',
      receiver: receiver,
      sendAt: DateTime.now().toUtc(),
      attachment: attachment,
    );
    if (_socket.connected) {
      _messageController.add(result);
      _socket.emit('sendMessage', result.toJson());
    } else {
      showSnackBar('You are not connected. Message not sent.', context: navigatorKey.currentContext);

      log('You are not connected. Message not sent.');
    }
  }

  void getOnlineStatus(final String receiver) {
    if (_socket.connected) {
      _socket.emitWithAck(
        'getOnlineStatus',
        receiver,
        ack: (final response) {
          log(response.toString());
          _onlineStatusController.add(response['online'] ?? false);
        },
      );
    } else {
      // showSnackBar('You are not connected. Message not sent.');
    }
  }
}
