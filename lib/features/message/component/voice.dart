// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';

// // Configuration should be moved to a separate config file
// class AgoraConfig {
//   static const String appId = '<-- Your Agora App ID -->';
//   static const String defaultChannel = 'test_channel';
// }

// class VoiceCallPage extends StatefulWidget {
//   final String channelName;
//   final String token;

//   const VoiceCallPage({
//     super.key, 
//     required this.channelName, 
//     required this.token
//   });

//   @override
//   State<VoiceCallPage> createState() => _VoiceCallPageState();
// }

// class _VoiceCallPageState extends State<VoiceCallPage> {
//   // Use nullable RtcEngine to handle potential initialization failures
//   RtcEngine? _engine;
  
//   // Improved state management
//   CallState _callState = CallState.uninitialized;
//   bool _muted = false;
//   bool _speakerphone = false;
//   int? _remoteUid;

//   @override
//   void initState() {
//     super.initState();
//     _initializeCall();
//   }

//   // Consolidated initialization method with better error handling
//   Future<void> _initializeCall() async {
//     try {
//       // Request permissions first
//       final permissionStatus = await _requestPermissions();
//       if (!permissionStatus) return;

//       // Initialize Agora engine
//       await _initializeAgoraVoiceSDK();
      
//       // Setup event handlers
//       _setupEventHandlers();
      
//       // Configure engine for voice communication
//       await _configureEngine();
      
//       // Join channel
//       await _joinChannel();
//     } catch (e) {
//       _handleInitializationError(e);
//     }
//   }

//   // More robust permission handling
//   Future<bool> _requestPermissions() async {
//     final microphoneStatus = await Permission.microphone.request();
    
//     if (!microphoneStatus.isGranted) {
//       // Show a more informative dialog
//       await _showPermissionDeniedDialog();
//       return false;
//     }
//     return true;
//   }

//   // Improved error handling dialog
//   Future<void> _showPermissionDeniedDialog() async {
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Microphone Permission Required'),
//           content: const Text('This app needs microphone access to make voice calls. Please enable microphone permissions in your device settings.'),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('Open Settings'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 openAppSettings();
//               },
//             ),
//             TextButton(
//               child: const Text('Cancel'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   // Initialize Agora RTC engine with more robust setup
//   Future<void> _initializeAgoraVoiceSDK() async {
//     _engine = createAgoraRtcEngine();
//     await _engine?.initialize(RtcEngineContext(
//       appId: AgoraConfig.appId,
//       channelProfile: ChannelProfileType.channelProfileCommunication,
//     ));
//   }

//   // More comprehensive engine configuration
//   Future<void> _configureEngine() async {
//     await _engine?.disableVideo();
//     await _engine?.enableAudio();
    
//     // Advanced audio configuration
//     await _engine?.setAudioProfile(
//       profile: AudioProfileType.audioProfileSpeechStandard,
//       scenario: AudioScenarioType.audioScenarioChatroom,
//     );

//     // Enable noise suppression
//     await _engine?.setAINSMode(
//       enabled: true,
//       mode: AudioAinsMode.ainsModeAggressive,
//     );
//   }

//   // Join channel with more robust error handling
//   Future<void> _joinChannel() async {
//     if (_engine == null) return;

//     try {
//       await _engine!.joinChannel(
//         token: widget.token,
//         channelId: widget.channelName,
//         options: const ChannelMediaOptions(
//           autoSubscribeAudio: true,
//           publishMicrophoneTrack: true,
//           clientRoleType: ClientRoleType.clientRoleBroadcaster,
//         ),
//         uid: 0,
//       );
      
//       setState(() {
//         _callState = CallState.connected;
//       });
//     } catch (e) {
//       _handleInitializationError(e);
//     }
//   }

//   // Centralized error handling
//   void _handleInitializationError(Object error) {
//     setState(() {
//       _callState = CallState.error;
//     });

//     // Log error (consider using a proper logging mechanism)
//     debugPrint('Call initialization error: $error');

//     // Show user-friendly error dialog
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Call Error'),
//         content: Text('Failed to initialize call: $error'),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//               Navigator.pop(context); // Go back to previous screen
//             },
//             child: const Text(l10n.ok),
//           ),
//         ],
//       ),
//     );
//   }

//   // Event handlers with more comprehensive logging
//   void _setupEventHandlers() {
//     _engine?.registerEventHandler(
//       RtcEngineEventHandler(
//         onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
//           debugPrint("Local user ${connection.localUid} joined successfully");
//         },
//         onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
//           setState(() {
//             _remoteUid = remoteUid;
//           });
//           debugPrint("Remote user $remoteUid joined");
//         },
//         onUserOffline: (RtcConnection connection, int remoteUid, UserOfflineReasonType reason) {
//           setState(() {
//             _remoteUid = null;
//           });
//           debugPrint("Remote user $remoteUid left: ${reason.name}");
//         },
//         onLeaveChannel: (RtcConnection connection, RtcStats stats) {
//           setState(() {
//             _callState = CallState.disconnected;
//           });
//           debugPrint("Left channel with duration: ${stats.duration}");
//         },
//         onError: (ErrorCodeType err, String msg) {
//           debugPrint('Agora error: $err, $msg');
//           _handleInitializationError(msg);
//         },
//       ),
//     );
//   }

//   // Toggle methods with more comprehensive state management
//   void _toggleMute() {
//     setState(() {
//       _muted = !_muted;
//     });
//     _engine?.muteLocalAudioStream(_muted);
//   }

//   void _toggleSpeakerphone() {
//     setState(() {
//       _speakerphone = !_speakerphone;
//     });
//     _engine?.setEnableSpeakerphone(_speakerphone);
//   }

//   // Cleanup method
//   Future<void> _endCall() async {
//     await _engine?.leaveChannel();
//     await _engine?.release();
//   }

//   @override
//   void dispose() {
//     _endCall();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Voice Call')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildCallStateText(),
//             const SizedBox(height: 20),
//             if (_callState == CallState.connected) _buildCallControls(),
//           ],
//         ),
//       ),
//     );
//   }

//   // Separate method for call state text
//   Widget _buildCallStateText() {
//     String stateText;
//     switch (_callState) {
//       case CallState.uninitialized:
//         stateText = 'Initializing...';
//         break;
//       case CallState.connected:
//         stateText = 'Connected to channel';
//         break;
//       case CallState.disconnected:
//         stateText = 'Call Ended';
//         break;
//       case CallState.error:
//         stateText = 'Connection Error';
//         break;
//     }
//     return Text(stateText);
//   }

//   // Separate method for call controls
//   Widget _buildCallControls() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         FloatingActionButton(
//           heroTag: 'mute',
//           onPressed: _toggleMute,
//           child: Icon(_muted ? Icons.mic_off : Icons.mic),
//         ),
//         const SizedBox(width: 20),
//         FloatingActionButton(
//           heroTag: 'speaker',
//           onPressed: _toggleSpeakerphone,
//           child: Icon(_speakerphone ? Icons.volume_up : Icons.volume_off),
//         ),
//         const SizedBox(width: 20),
//         FloatingActionButton(
//           heroTag: 'end_call',
//           onPressed: () {
//             _endCall();
//             Navigator.pop(context);
//           },
//           backgroundColor: Colors.red,
//           child: const Icon(Icons.call_end),
//         ),
//       ],
//     );
//   }
// }

// // Enum for call state management
// enum CallState {
//   uninitialized,
//   connected,
//   disconnected,
//   error
// }
