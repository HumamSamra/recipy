import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DefaultBanner extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData? icon;
  const DefaultBanner({
    required this.title,
    required this.subTitle,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                title,
                minFontSize: 28,
              ),
              AutoSizeText(
                subTitle,
                minFontSize: 17,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
            ],
          ),
          if (icon != null)
            Icon(
              icon,
              size: 35,
            )
        ],
      ),
    );
  }
}
