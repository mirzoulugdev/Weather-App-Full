// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/logic/repositories/repository.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/presentation/screens/weather_screen.dart';
import 'package:weather_app/utils/app_colors.dart';
import 'package:weather_app/utils/app_images.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  Repository repo = Repository();

  @override
  void dispose() {
    nameController.dispose();

    super.dispose();
  }

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AppImages.mainImage),
              SizedBox(height: 30.h),
              Text(
                "Weather",
                style: TextStyle(
                  fontSize: 60.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.white,
                    hintText: "Write city name...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () async {
                  setState(() {
                    isLoading = true;
                  });
                  final data = await repo.getData(
                    cityName: nameController.text.trim(),
                  );
                  setState(() {
                    isLoading = false;
                  });
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => WeatherScreen(
                        responseData: data,
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 250.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: AppColors.orange,
                  ),
                  child: isLoading
                      ? CupertinoActivityIndicator(
                          color: AppColors.white,
                          radius: 15.r,
                        )
                      : Text(
                          "Show Info",
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
      ),
    );
  }
}
