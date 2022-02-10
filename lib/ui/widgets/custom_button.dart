import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/const/app_colors.dart';

Widget customButtonPrairieSand(
  centerText,
  onPressed,
) =>
    Container(
        width: ScreenUtil().screenWidth,
        height: 49.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(6.r),
          ),
        ),
        child: Material(
            borderRadius: BorderRadius.all(
              Radius.circular(6.r),
            ),
            color: AppColors.poonolil_primary,
            child: InkWell(
              borderRadius: BorderRadius.all(
                Radius.circular(6.r),
              ),
              onTap: onPressed,
              splashColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      centerText,
                      style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFFFAF6F1),
                          letterSpacing: 0,
                          height: 1.h),
                    ),
                    Image.asset(
                      "assets/icons/right-down.png",
                      width: 14.w,
                      color: Color(0xFFFEF9FA).withOpacity(0.4),
                    ),
                  ],
                ),
              ),
            )));

Widget customButtonPoonolilWhite(
  centerText,
  onPressed,
) =>
    Container(
      width: ScreenUtil().screenWidth,
      height: 49.h,
      decoration: BoxDecoration(
        color: Color(0xFFFF366F).withOpacity(0.04),
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
          child: Material(
            borderRadius: BorderRadius.all(
              Radius.circular(6.r),
            ),
            color: Color(0xFFFFFFFF).withOpacity(0.2),
            child: InkWell(
              borderRadius: BorderRadius.all(
                Radius.circular(6.r),
              ),
              onTap: onPressed,
              splashColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      centerText,
                      style: TextStyle(
                        fontFamily: "MadeOuterSans",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w200,
                        color: Color(0xFFFAF6F1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

Widget addToCartButton(
  price,
  title,
  onPressed,
) =>
    Container(
      width: ScreenUtil().screenWidth,
      height: 49.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
        color: AppColors.poonolil_primary,
        child: InkWell(
          borderRadius: BorderRadius.all(
            Radius.circular(6.r),
          ),
          onTap: onPressed,
          splashColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "₹ $price",
                  style: TextStyle(
                    fontFamily: "MadeOuterSans",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFDBB98F),
                    letterSpacing: 0.06,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  child: Container(
                    width: 1.w,
                    height: 20.h,
                    color: Color(0xFFDBB98F),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: "MadeOuterSans",
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w200,
                    color: Color(0xFFDBB98F),
                    letterSpacing: 0.06,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

Widget addToCartButtonTow(
  text,
  onPressed,
) =>
    Container(
      width: ScreenUtil().screenWidth,
      height: 49.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
        color: AppColors.poonolil_primary,
        child: InkWell(
          borderRadius: BorderRadius.all(
            Radius.circular(6.r),
          ),
          onTap: onPressed,
          splashColor: Colors.white,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: "MadeOuterSans",
                fontSize: 13.sp,
                fontWeight: FontWeight.w200,
                color: Color(0xFFDBB98F),
                letterSpacing: 0.06,
              ),
            ),
          ),
        ),
      ),
    );

Widget profileDropDownButton(
  text,
  onPressed,
) =>
    Container(
      width: ScreenUtil().screenWidth,
      height: 49.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.all(
            Radius.circular(6.r),
          ),
          onTap: onPressed,
          splashColor: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: "MadeOuterSans",
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w200,
                    color: AppColors.poonolil_Black.withOpacity(0.6),
                    letterSpacing: 0.06,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
