import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/styles/color_helper.dart';
import 'package:ui/styles/font_helper.dart';
import 'package:ui/widgets/doctor_widget.dart';
import 'package:ui/widgets/header_widget.dart';
import 'package:ui/widgets/nearby_doctor_widget.dart';
import 'package:ui/widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Map<String, String>> tabs = [
    {'title': 'Covid 19', 'icon': 'assets/svgs/sun.svg'},
    {'title': 'Doctor', 'icon': 'assets/svgs/profile-add.svg'},
    {'title': 'Medicine', 'icon': 'assets/svgs/medicine.svg'},
    {'title': 'Hospital', 'icon': 'assets/svgs/hospital.svg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              const HeaderWidget(),
              SizedBox(
                height: 20.h,
              ),
              const DoctorWidget(),
              SizedBox(
                height: 10.h,
              ),
              const SearchWidget(),
              SizedBox(
                height: 10.h,
              ),
              HorizontalTabs(tabs: tabs),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Near Doctor",
                style: FontHelper.myFont(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 50.h,
              ),
              const NearbyDoctorWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalTabs extends StatelessWidget {
  const HorizontalTabs({
    super.key,
    required this.tabs,
  });

  final List<Map<String, String>> tabs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
          itemCount: tabs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10.h, right: 28.w),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.1),
                    radius: 30.r,
                    child: SvgPicture.asset(tabs[index]['icon']!),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    '${tabs[index]['title']}',
                    style: FontHelper.myFont(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: ColorHelper.fadedPurple),
                  )
                ],
              ),
            );
          }),
    );
  }
}
