import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
    return Padding(
      padding: EdgeInsets.only(bottom: 1.h),
      child: Ink(
        height: 30.h,
        width: 45.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                imagePath,
              ),
            )),
        child: InkWell(
          onTap: () async {
            if (onTap != null) {
              await Future.delayed(const Duration(milliseconds: 100));
              onTap!();
            }
          },
          splashColor: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  stops: [
                    0,
                    1,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AutoSizeText(
                    subTitle,
                    minFontSize: 14,
                  ),
                  AutoSizeText(
                    title,
                    minFontSize: 23,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
