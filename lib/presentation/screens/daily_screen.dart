import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/main.dart';

import 'package:weather_app/presentation/widgets/bold_text.dart';
import 'package:weather_app/presentation/widgets/custom_container.dart';
import 'package:weather_app/presentation/widgets/custom_cub.dart';
import 'package:weather_app/presentation/widgets/normal_text.dart';
import 'package:weather_app/utils/app_colors.dart';
import 'package:weather_app/utils/app_images.dart';

class DailyScreen extends StatelessWidget {
  const DailyScreen({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: NormalText(
                    color: AppColors.white,
                    fontSize: 24,
                    text: "North America",
                  ),
                ),
                Center(
                  child: NormalText(
                    color: AppColors.white,
                    fontSize: 24,
                    text: "Max: 24°   Min:18°",
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Boldtext(
                    text: "   7-Days Forecasts",
                    fontSize: 24,
                    color: AppColors.white),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.white,
                        ),
                      ),
                      CustomContainer(
                        day: "Mon",
                        imagePath: AppImages.mainImage,
                        text: "19°C",
                        gradientColor1: Color(0XFF3E2D8F),
                        gradientColor2: Color(0XFF9D52AC),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomContainer(
                        day: "Tue",
                        imagePath: AppImages.mainImage,
                        text: "18°C",
                        gradientColor1: Color(0XFF3E2D8F),
                        gradientColor2: Color(0XFF9D52AC),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomContainer(
                        day: "Wed",
                        imagePath: AppImages.mainImage,
                        text: "19°C",
                        gradientColor1: Color(0XFF3E2D8F),
                        gradientColor2: Color(0XFF9D52AC),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomContainer(
                        day: "Thu",
                        imagePath: AppImages.mainImage,
                        text: "18°C",
                        gradientColor1: Color(0XFF3E2D8F),
                        gradientColor2: Color(0XFF9D52AC),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  width: 352.w,
                  height: 174.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.lightBlue,
                        AppColors.pink,
                        AppColors.lightPurple,
                      ],
                      end: Alignment.bottomLeft,
                      begin: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppImages.air),
                            SizedBox(
                              width: 10.w,
                            ),
                            NormalText(
                                text: "AIR QUALITY",
                                fontSize: 12.sp,
                                color: AppColors.white),
                          ],
                        ),
                        Boldtext(
                            text: "3-Low Health Risk",
                            fontSize: 24,
                            color: AppColors.white),
                        Spacer(),
                        Divider(
                          thickness: 6,
                          color: AppColors.lightPurple,
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalText(
                                text: "See More",
                                fontSize: 18,
                                color: AppColors.white),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CutomCube(
                      title: "SUNRISE",
                      imagePath: AppImages.star,
                      time: "5:28 AM",
                      sunset: "Sunset: 7:25 AM",
                      fontSize: 16,
                      fontSize1: 22,
                    ),
                    CutomCube(
                      title: "UV INDEX",
                      imagePath: AppImages.star,
                      time: "4",
                      sunset: "Moderate",
                      fontSize: 16,
                      fontSize1: 22,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 80,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
