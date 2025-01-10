import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utils/app_colors.dart';
import 'package:weather_app/utils/app_images.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.blue,
              AppColors.pink,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 200.h,
              width: 200.w,
              child: Image.asset(
                AppImages.mainImage,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "10℃",
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
            Text(
              "Precipitations",
              style: TextStyle(
                fontSize: 25.sp,
                color: AppColors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Max: 24℃",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(width: 20.w),
                Text(
                  "Min: 18℃",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
