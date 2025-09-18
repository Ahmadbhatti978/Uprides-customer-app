import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../util/colors.dart';
import '../../../util/style/typo.dart';
import '../../constants/constants.dart';
import '../loading_error/loading.dart';

class FormRow extends StatelessWidget {
  const FormRow({required this.title, super.key, this.icon, this.onTap, this.image, this.isLoading = false});
  final String title;
  final IconData? icon;
  final VoidCallback? onTap;
  final String? image;
  final bool isLoading;
  @override
  Widget build(BuildContext context) => InkWell(
    splashFactory: InkSparkle.splashFactory,
    overlayColor: const WidgetStatePropertyAll(Color.fromARGB(255, 235, 234, 234)),
    //  splashColor: const Color.fromARGB(255, 245, 245, 245),
    borderRadius: BorderRadius.circular(8),
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: <Widget>[
          if (isLoading) loading else image != null ? Image.asset(image!, width: 24) : Icon(icon, color: Colorx.primary),
          const Gap(padding),
          Text(title, style: Primary.headingSmalllThin),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    ),
  );
}
