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
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 150,
              child: Image.asset(
                AppImages.house,
              ),
            ),
            Container(
              width: double.infinity.w,
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    AppColors.blue,
                    AppColors.pink,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 5,
                    color: AppColors.blue.withOpacity(0.5),
                  )
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColors.white,
                          ),
                        ),
                        Text(
                          "July, 21",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
