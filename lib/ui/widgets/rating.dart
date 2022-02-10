import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget ratingWidget() {
  return Container(
    height: 23.h,
    width: 50.w,
    decoration: BoxDecoration(
      color: Color(0xFF60A74F),
      borderRadius: BorderRadius.all(
        Radius.circular(11.5.r),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 12.w,
        ),
        Text(
          "4.9",
          style: TextStyle(
              fontFamily: "MadeOuterSans",
              fontWeight: FontWeight.w300,
              fontSize: 10.sp,
              color: Colors.white),
        ),
      ],
    ),
  );
}
