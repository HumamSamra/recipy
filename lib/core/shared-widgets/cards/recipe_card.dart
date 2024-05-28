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
  final String heroTag;
  const RecipeCard({
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.heroTag,
    this.onTap,
    this.buttonLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 1.h),
      child: SizedBox(
        width: 45.w,
        child: Column(
          children: [
            Hero(
              tag: heroTag,
              child: GestureDetector(
                onTap: onTap,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
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
                ],
              ),
            ),
            Gap(1.h),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(10)),
                    )),
                child: Text(buttonLabel ?? "View"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
