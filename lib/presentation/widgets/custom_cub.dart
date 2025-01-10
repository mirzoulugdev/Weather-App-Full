import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/presentation/widgets/bold_text.dart';
import 'package:weather_app/presentation/widgets/normal_text.dart';
import 'package:weather_app/utils/app_colors.dart';
import 'package:weather_app/utils/app_images.dart';

class CutomCube extends StatelessWidget {
  final String imagePath, title, time, sunset;
  final double fontSize, fontSize1;

  const CutomCube({
    super.key,
    required this.imagePath,
    required this.title,
    required this.time,
    required this.sunset,
    required this.fontSize,
    required this.fontSize1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            AppColors.pink,
            AppColors.blue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: AppColors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset(AppImages.star),
                SizedBox(
                  width: 10.w,
                ),
                NormalText(
                    text: title,
                    fontSize: fontSize,
                    color: AppColors.greyTextColor),
              ],
            ),
            Boldtext(text: time, fontSize: fontSize.sp, color: AppColors.white),
            NormalText(
                text: sunset,
                fontSize: fontSize,
                color: AppColors.greyTextColor),
          ],
        ),
      ),
    );
  }
}
