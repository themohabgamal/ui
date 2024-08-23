import 'package:flutter/material.dart';
import 'package:ui/styles/font_helper.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: FontHelper.myFont(
                fontSize: 18,
                color: const Color.fromARGB(140, 4, 0, 30),
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Mohab',
              style: FontHelper.myFont(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
        CircleAvatar(
          radius: 30,
          child: Image.asset('assets/images/avatar.png'),
        ),
      ],
    );
  }
}
