
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget authType(String path){
  return Padding(
    padding:  EdgeInsets.only(right: 11.w),
    child: Container(
      height: 40.88.h,
      width: 40.88.w,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: Center(child: Image.asset(path,height:21.h,fit: BoxFit.fitWidth,)),
    ),
  );
}