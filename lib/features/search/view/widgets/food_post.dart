import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FoodPost extends StatelessWidget {
  final String category;
  final String imagePath;
  final String text;
  final bool secondary;
  final Function()? onView;
  final Function()? onSave;
  const FoodPost({
    required this.category,
    required this.imagePath,
    required this.text,
    required this.secondary,
    this.onSave,
    this.onView,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: secondary
          ? Theme.of(context).colorScheme.outline.withOpacity(0.05)
          : Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 3.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                imageUrl: imagePath,
                height: 30.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3.w),
            width: double.infinity,
            child: AutoSizeText(
              category,
              minFontSize: 18,
              maxFontSize: 20,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 2.h),
            child: AutoSizeText(
              text,
              textAlign: TextAlign.justify,
              minFontSize: 16,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: onSave,
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  child: Row(
                    children: [
                      const Icon(Icons.save_outlined),
                      Gap(2.w),
                      const Text("Save"),
                    ],
                  ),
                ),
                Gap(2.w),
                ElevatedButton(
                  onPressed: onView,
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  child: Row(
                    children: [
                      const Icon(Icons.open_in_new),
                      Gap(2.w),
                      const Text("View"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
