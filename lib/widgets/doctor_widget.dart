import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/styles/color_helper.dart';
import 'package:ui/styles/font_helper.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      height: 140.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorHelper.primaryColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 30.h,
                      child: ClipOval(
                          child: Image.asset('assets/images/doctor.png'))),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Mohab",
                        style: FontHelper.myFont(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "General Doctor",
                        style: FontHelper.myFont(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    size: 36,
                    color: Colors.white,
                  ))
            ],
          ),
          const Divider(
            color: Colors.white24,
          ),
          SizedBox(
            height: 17.h,
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/calendar-2.svg',
                width: 20.w,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Sunday, 12 June',
                style: FontHelper.myFont(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(
                width: 20.w,
              ),
              SvgPicture.asset(
                'assets/svgs/clock.svg',
                width: 20.w,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                '11:00 - 12:00 AM',
                style: FontHelper.myFont(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
