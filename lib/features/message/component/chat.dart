import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http; // For network requests
import 'package:image_picker/image_picker.dart';
import 'package:open_filex/open_filex.dart';
import '../../../core/constants/constants.dart';
import '../../../core/extensions/date.dart';
import '../../../core/message.dart';
import '../../../core/widgets/align/title_subtitle.dart';
import '../../../core/widgets/loading_error/error.dart';
import '../../../core/widgets/loading_error/loading.dart';
import '../../../util/api/call.dart';
import '../../../util/colors.dart';
import '../../../util/style/typo.dart';
import '../../../util/utils.dart';
import '../../../util/variable.dart';
import '../../chat/provider/chat_stream.dart';
import '../../chat/provider/get_online_status.dart';
import '../../chat/provider/send_image.dart';
import '../../chat/provider/send_p.dart';
import '../../home/model/ride_data.dart';

class Chat extends ConsumerWidget {
  const Chat({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final RideData? ride = ModalRoute.settingsOf(context)?.arguments as RideData?;

    final AsyncValue<List<Message>> liveChats = ref.watch(chatStreamProvider(ride?.data?.ride?.conversationId ?? ''));
    if (ride?.data?.driverInfo?.id == null) return const Err();

    //  final AsyncValue<bool> onlineStatus = ref.watch(GetOnlineStatusProvider(ride!.payload!.driver.id!));
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      backgroundColor: grey,
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4,
        shadowColor: Colors.black12,
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_rounded)),
        title: Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 16),
          child: Row(
            spacing: padding,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: grey,
                    backgroundImage: ride?.data?.driverInfo?.profilePic != null ? CachedNetworkImageProvider(ride!.data!.driverInfo!.profilePic!) : null,
                  ),
                  ref
                      .watch(GetOnlineStatusProvider(ride?.data?.driverInfo?.id ?? ''))
                      .when(
                        data: (isOnline) => isOnline ? Container(color: const Color(0xFF17d14b), height: 12) : const SizedBox.shrink(),
                        loading: () => const SizedBox.shrink(),
                        error: (error, stack) => Text('Error: $error'),
                      ),
                ],
              ),

              TitleSubtitle(title: ride?.data?.driverInfo?.fullName ?? 'Angel Dias', subTitle: ride?.data?.driverInfo?.vin ?? 'JH01 MD 22I1', heading: true),
            ],
          ),
        ),
        actions: <Widget>[IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))],
      ),
      body: switch (liveChats) {
        // Display all the messages in a scrollable list view.
        AsyncData(:final List<Message> value) => Column(
          children: <Widget>[
            Expanded(child: value.isEmpty ? const Initial() : MessageList(messages: value)),
            TextFeildCapsule(ref: ref, conversationId: ride?.data?.ride?.conversationId, receiver: ride?.data?.driverInfo?.id),
          ],
        ),
        AsyncError(:final Object error) => Text(error.toString()),
        _ => loading,
      },

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //  bottomNavigationBar: SafeArea(child: TextFeildCapsule(ref: ref)),
    );
  }
}

class TextFeildCapsule extends StatefulWidget {
  const TextFeildCapsule({required this.ref, super.key, this.conversationId, this.receiver});
  final WidgetRef ref;
  final String? conversationId;
  final String? receiver;

  @override
  State<TextFeildCapsule> createState() => _TextFeildCapsuleState();
}

class _TextFeildCapsuleState extends State<TextFeildCapsule> {
  final TextEditingController controller = TextEditingController();

  ValueNotifier<bool> show = ValueNotifier(false);

  @override
  void initState() {
    super.initState();

    controller.addListener(() => show.value = controller.text.trim().isNotEmpty);
  }

  @override
  void dispose() {
    show.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => Container(
    padding: const EdgeInsets.fromLTRB(12, 6, 8, 8),
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: <BoxShadow>[BoxShadow(color: Color.fromARGB(17, 117, 117, 117), spreadRadius: 2, blurRadius: 18, offset: Offset(0, -5))],
    ),
    // padding: const EdgeInsets.all(8),
    child: SafeArea(
      child: SizedBox(
        height: 45,
        child: Row(
          spacing: horizontalSpacing,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                controller: controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    padding: const EdgeInsets.all(10),

                    onPressed:
                        (widget.conversationId == null || widget.receiver == null)
                            ? null
                            : () async {
                              final XFile? photo = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 1);
                              widget.ref.read(
                                UploadAttachmentsProvider(pic: File(photo?.path ?? ''), conversationId: widget.conversationId!, receiver: widget.receiver!),
                              );
                              controller.clear();
                            },
                    icon: const Icon(CupertinoIcons.camera),
                  ),
                ),
              ),
            ),

            ValueListenableBuilder(
              valueListenable: show,
              child: IconButton.filled(
                padding: const EdgeInsets.all(10),
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color(0xFF18C4B8))),
                onPressed:
                    (widget.conversationId == null || widget.receiver == null)
                        ? null
                        : () {
                          widget.ref.read(sendProvider(controller.text, widget.conversationId!, widget.receiver!));
                          controller.clear();
                        },
                icon: const Icon(Icons.send, color: Colors.white),
              ),
              builder: (context, value, child) => AnimatedSize(duration: Durations.short4, child: SizedBox.square(dimension: !value ? 0 : 45, child: child)),
            ),
          ],
        ),
      ),
    ),
  );
}

class MessageList extends StatelessWidget {
  const MessageList({required this.messages, super.key});

  final List<Message> messages;
  bool _shouldShowTimestamp(final int index) =>
      index == messages.length - 1 ||
      messages[index].sender != messages[index + 1].sender ||
      messages[index + 1].sendAt!.difference(messages[index].sendAt!).inMinutes > 1;
  int lastIndex() {
    for (int i = messages.length - 1; i >= 0; i--) {
      if (messages[i].sender != messages[messages.length - 1].sender) {
        return i;
      }
    }
    return -1;
  }

  @override
  Widget build(final BuildContext context) {
    final int lIndex = lastIndex();
    //   final now = DateTime.now();
    return ListView.builder(
      itemCount: messages.length,
      padding: const EdgeInsets.only(top: p24),
      itemBuilder:
          (final BuildContext context, final int index) => ChatBubble(
            message: messages.elementAt(index),
            showTranslation: index == messages.length - 1 || index == lIndex,
            showTimestamp: _shouldShowTimestamp(index),
          ),
    );
  }
}

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(final BuildContext context) {
    final RideData? ride = ModalRoute.settingsOf(context)?.arguments as RideData?;
    const List<String> quickReplies = <String>['👋🏻 Hi', 'I am on my way', 'I am here', 'Where are you?', 'Please call me', 'I saw you'];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpacing),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Spacer(),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(color: const Color(0x1EF4AF00), borderRadius: BorderRadius.circular(8)),
            child: const Text(
              'Please note that your conversation is accessible to the UPrides app team.',
              style: TextStyle(color: Colors.black, fontSize: 14, fontVariations: <FontVariation>[FontVariation('wght', 450)]),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 32),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(color: const Color(0x1EF4AF00), borderRadius: BorderRadius.circular(8)),
            child: Text(l10n.in_case_or_urgency_you_can_now_reach_out_to_our_support_team_for_help_or_your_driver_is_here_to_proceed_with_this_conversation),
          ),
          Text(l10n.start_your_conversation(ride?.data?.driverInfo?.fullName ?? ''), style: Secondary.body),
          const Gap(padding),
          Consumer(
            builder:
                (final BuildContext context, final WidgetRef ref, final Widget? child) => Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 9,
                  spacing: 10,
                  children: quickReplies
                      .map(
                        (final String text) =>
                            QuickReplyButton(text: text, ref: ref, conversationId: ride?.data?.ride?.conversationId, receiver: ride?.data?.driverInfo?.id),
                      )
                      .toList(growable: false),
                ),
          ),
          const Spacer(flex: 6),
        ],
      ),
    );
  }
}

class QuickReplyButton extends ConsumerWidget {
  const QuickReplyButton({required this.text, required this.ref, super.key, this.conversationId, this.receiver});
  final String text;
  final String? conversationId;
  final String? receiver;
  final WidgetRef ref;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => TextButton(
    style: const ButtonStyle(
      padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 12, vertical: 2.5)),
      backgroundColor: WidgetStatePropertyAll(Color(0x2818C4B8)),
    ),
    onPressed: () => (conversationId == null || receiver == null) ? null : ref.read(sendProvider(text, conversationId!, receiver!)),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        color: Colors.black,
        fontVariations: <FontVariation>[FontVariation('wght', 600)],
        letterSpacing: 0.2,
        wordSpacing: 0.12,
      ),
    ),
  );
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({required this.message, super.key, this.showTimestamp = true, this.showTranslation = false});
  final Message message;
  final bool showTimestamp;
  final bool showTranslation;

  bool isImage(final String url) =>
      url.endsWith('.png') || url.endsWith('.jpg') || url.endsWith('.jpeg') || url.endsWith('.gif') || url.endsWith('.webp') || url.endsWith('bmp');

  bool isPDF(final String url) => url.endsWith('.pdf');

  @override
  Widget build(final BuildContext context) {
    const String translateText = 'Translated text';
    final bool isSender = message.sender == guser?.id;
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          spacing: 4,
          crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              constraints: BoxConstraints(maxWidth: mediaQuery.size.width / 1.08, minWidth: 50),
              padding: message.attachment?.attachment != null ? const EdgeInsets.all(5) : const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
              decoration:
                  isSender
                      ? const BoxDecoration(color: Color.fromRGBO(210, 237, 235, 1), borderRadius: BorderRadius.all(Radius.circular(8)))
                      : const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)), color: Colors.white),
              child: Column(
                spacing: 2,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (message.attachment != null)
                    GestureDetector(
                      onTap: () => open(message.attachment?.attachment ?? ''),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child:
                            isImage(message.attachment?.attachment ?? '')
                                ? CachedNetworkImage(
                                  imageUrl: message.attachment?.attachment ?? '',
                                  fit: BoxFit.cover,
                                  // width: double.infinity,
                                  // height: double.infinity,
                                )
                                : const SizedBox(),
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Text(
                      message.text ?? '',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Red Hat Display',
                        fontVariations: <FontVariation>[FontVariation('wght', 500)],
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (showTranslation)
                  TextButton.icon(
                    icon: const Icon(Icons.g_translate, size: 14, color: Color(0xFF777777)),
                    style: ButtonStyle(overlayColor: WidgetStateProperty.all(const Color(0x20777777))),
                    label: const Text(
                      translateText,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF777777),
                        color: Color(0xFF777777),
                        fontSize: 10,
                        fontFamily: 'Red Hat Display',
                        fontVariations: <FontVariation>[FontVariation('wght', 500)],
                      ),
                    ),
                    onPressed: () {},
                  ),
                if (showTimestamp) Text(message.sendAt?.toLocal().toTime() ?? '', style: const TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

bool _isLoading = false;

Future<void> open(final String fileUrl) async {
  if (_isLoading) return; // Prevent multiple simultaneous downloads

  _isLoading = true;

  File? localFile;
  IOSink? fileSink;
  StreamSubscription? downloadSubscription;

  try {
    final Directory tempDir = Directory.systemTemp;
    final String tempPath = tempDir.path;
    final String fileName = fileUrl.split('/').last.isNotEmpty ? fileUrl.split('/').last : 'downloaded_file';
    final String localFilePath = '$tempPath/$fileName';
    localFile = File(localFilePath);
    fileSink = localFile.openWrite();

    final http.Request request = http.Request('GET', Uri.parse(fileUrl));
    final http.StreamedResponse response = await Request.clientService.client.send(request);

    log('Downloading $fileUrl to $localFilePath');

    if (response.statusCode == 200) {
      final Completer<void> completer = Completer<void>();
      downloadSubscription = response.stream.listen(
        (final List<int> chunk) {
          fileSink?.add(chunk);
        },
        onDone: () async {
          log('Download stream finished.');
          await fileSink?.flush();
          await fileSink?.close();
          fileSink = null;
          if (!completer.isCompleted) completer.complete();
        },
        onError: (final e) async {
          log('Download stream error: $e');
          await fileSink?.close();
          fileSink = null;
          if (!completer.isCompleted) completer.completeError(e);
        },
        cancelOnError: true,
      );

      await completer.future;
      downloadSubscription = null;

      log('File saved successfully: $localFilePath');

      final OpenResult result = await OpenFilex.open(localFilePath);

      if (result.type == ResultType.done) {
        showSnackBar('File opened successfully.');
        Future.delayed(const Duration(seconds: 3), () {
          showSnackBar('Ready to download again.');
        });
      } else if (result.type == ResultType.noAppToOpen) {
        throw Exception('No application found to open this file type.');
      } else {
        throw Exception('Could not open file: ${result.message} (Code: ${result.type})');
      }
    } else {
      await fileSink.close();
      fileSink = null;
      throw Exception('Download failed: Status code ${response.statusCode}');
    }
  } catch (e) {
    log('Error during process: $e');
    await fileSink?.close();
    fileSink = null;
    showSnackBar('Error: $e');
  } finally {
    _isLoading = false;
    await downloadSubscription?.cancel();
  }
}
