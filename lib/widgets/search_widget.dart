import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/styles/color_helper.dart';
import 'package:ui/styles/font_helper.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1), // Faded grey background color
        borderRadius: BorderRadius.circular(12.0), // Rounded border radius
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Image.asset(
            'assets/images/search.png',
            width: 30.w,
          ), // Search icon
          hintText: 'Search doctor or health issue', // Hint text
          hintStyle: FontHelper.myFont(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: ColorHelper.fadedPurple), // Hint text color
          border: InputBorder.none, // No border
        ),
      ),
    );
  }
}
