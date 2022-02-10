import 'package:flutter/material.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appBarWidget(title,context) {
  return AppBar(
    elevation: 2,
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(
          color: AppColors.poonolil_Black,
          fontSize: 18.sp,
          fontFamily: "Fligen"),
    ),
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(
        Icons.arrow_back_outlined,
        color: AppColors.poonolil_Black,
        size: 24.sp,
      ),
    ),
    centerTitle: true,
  );
}
