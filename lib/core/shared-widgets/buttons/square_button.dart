import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SquaredButton extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;
  const SquaredButton({
    this.onTap,
    required this.icon,
    super.key,
  });

  factory SquaredButton.backButton(BuildContext context) {
    return SquaredButton(
      icon: Icons.arrow_back_ios_rounded,
      onTap: () {
        context.router.maybePop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).colorScheme.background.withOpacity(.4),
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(5),
          child: Ink(
            padding: EdgeInsets.all(2.w),
            child: Icon(
              icon,
              size: 28,
            ),
          ),
        ));
  }
}
