import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RecipeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final Function()? onTap;
  final String? buttonLabel;
  const RecipeCard({
    required this.title,
    required this.subTitle,
    required this.imagePath,
    this.onTap,
    this.buttonLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
        margin: EdgeInsets.only(bottom: 2.h),
        width: 47.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Gap(1.h),
            SizedBox(
              width: double.infinity,
              child: AutoSizeText(
                title,
                minFontSize: 20,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: AutoSizeText(
                subTitle,
                minFontSize: 16,
                maxFontSize: 18,
                textAlign: TextAlign.start,
              ),
            ),
            Gap(1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  child: Text(buttonLabel ?? "View"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}