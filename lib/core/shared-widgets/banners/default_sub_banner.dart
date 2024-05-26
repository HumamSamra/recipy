import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DefaultSubBanner extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;
  final Widget? btnChild;
  const DefaultSubBanner({
    required this.title,
    required this.icon,
    this.onTap,
    this.btnChild,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          Gap(2.w),
          AutoSizeText(
            title,
            minFontSize: 25,
          ),
          const Spacer(),
          TextButton(
              onPressed: onTap, child: btnChild ?? const Text("View all"))
        ],
      ),
    );
  }
}
