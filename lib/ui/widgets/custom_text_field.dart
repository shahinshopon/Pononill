import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTextField(icon, hint, keyboardType) {
  return Container(
    height: 49.h,
    decoration: BoxDecoration(
      color: Color(0xFFFFFFFF).withOpacity(0.2),
      borderRadius: BorderRadius.all(
        Radius.circular(6.r),
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(6.r),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20.0,
          sigmaY: 20.0,
        ),
        child: TextFormField(
          keyboardType: keyboardType,
          style: TextStyle(
            fontFamily: "MadeOuterSans",
            fontSize: 13.sp,
            fontWeight: FontWeight.normal,
            color: Color(0xFFFAF6F1),
            letterSpacing: 0,
            height: 1.h,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF96351E).withOpacity(0.04),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
              width: 0,
            )),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent)),
            suffixIcon: Icon(
              icon,
              color: Color(0xFFFEF9FA),
              size: 16.w,
            ),
            hintText: hint,
            hintStyle: TextStyle(
              fontFamily: "MadeOuterSans",
              fontSize: 13.sp,
              letterSpacing: 0.06,
              fontWeight: FontWeight.w200,
              color: Color(0xFFFAF6F1),
            ),
            contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 20.w),
          ),
        ),
      ),
    ),
  );
}
