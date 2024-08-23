import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:ui/screens/home_screen.dart';
import 'package:ui/styles/color_helper.dart';

class Switcher extends StatefulWidget {
  const Switcher({super.key});

  @override
  State<Switcher> createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  late PersistentTabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> screens = [
    HomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_controller.index],
      bottomNavigationBar: PersistentTabView(context,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          navBarHeight: 65.h,
          controller: _controller,
          screens: screens,
          items: [
            PersistentBottomNavBarItem(
              icon: SvgPicture.asset('assets/svgs/home.svg'),
              title: ("Home"),
              activeColorPrimary: ColorHelper.primaryColor,
              inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
              icon: SvgPicture.asset('assets/svgs/schedule.svg'),
              title: ("Schedule"),
              activeColorPrimary: Colors.blue,
              inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
              icon: SvgPicture.asset('assets/svgs/message.svg'),
              title: ("Messages"),
              activeColorPrimary: Colors.blue,
              inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
              icon: SvgPicture.asset('assets/svgs/profile.svg'),
              title: ("Profile"),
              activeColorPrimary: Colors.blue,
              inactiveColorPrimary: Colors.grey,
            ),
          ]),
    );
  }
}
