import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bodyBackgroundImg(child) {
  return SafeArea(
    child: Container(
      height: ScreenUtil().screenHeight,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/body-bg.png"),fit: BoxFit.fill),
      ),
      child: child,
    ),
  );
}
