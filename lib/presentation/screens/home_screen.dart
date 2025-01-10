import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/presentation/screens/weather_screen.dart';
import 'package:weather_app/utils/app_colors.dart';
import 'package:weather_app/utils/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            Image.asset(AppImages.mainImage),
            SizedBox(height: 20.h),
            Text(
              "Weather",
              style: TextStyle(
                fontSize: 60.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
            Text(
              "ForeCasts",
              style: TextStyle(
                fontSize: 50.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.orange,
              ),
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () => Navigator.of(context).pushReplacement(
                CupertinoPageRoute(
                  builder: (context) => WeatherScreen(),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                width: 250.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColors.orange,
                ),
                child: Text(
                  "Get Start",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
