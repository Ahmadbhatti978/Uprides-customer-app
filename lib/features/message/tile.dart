import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/style/typo.dart';
import 'component/chat.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({super.key});

  @override
  Widget build(final BuildContext context) => CupertinoListTile(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (final BuildContext context) =>   const Chat(),
          ),),
      leadingSize: 40,
      padding: const EdgeInsets.all(16),
      leading: const CircleAvatar(radius: 20),
      title: const Text(
        'Gretchen Geidt',
        style: Primary.title,
      ),
      subtitle: const Text('I dropped you to peter mall', style: Secondary.title),
      trailing: const Text(
        '11 July, 2024',
        textAlign: TextAlign.justify,
        style: Secondary.titleSmall,
      ),
    );
}
