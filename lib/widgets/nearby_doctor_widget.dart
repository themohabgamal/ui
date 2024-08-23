import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/styles/color_helper.dart';
import 'package:ui/styles/font_helper.dart';

class NearbyDoctorWidget extends StatelessWidget {
  const NearbyDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorHelper.fadedGreyColor,
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
                            color: Colors.black),
                      ),
                      Text(
                        "General Doctor",
                        style: FontHelper.myFont(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorHelper.fadedPurple),
                      ),
                    ],
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 30,
                    color: ColorHelper.fadedPurple,
                  ),
                  Text(
                    '1.2 KM',
                    style: TextStyle(color: ColorHelper.fadedPurple),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: Colors.grey[300],
          ),
          SizedBox(
            height: 17.h,
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/clock.svg',
                width: 20.w,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                '4,8 (120 Reviews)',
                style: FontHelper.myFont(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.orange),
              ),
              SizedBox(
                width: 20.w,
              ),
              SvgPicture.asset(
                'assets/svgs/clock.svg',
                width: 20.w,
                color: Colors.blue,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Open at 17.00',
                style: FontHelper.myFont(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
