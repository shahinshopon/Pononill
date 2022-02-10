
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/const/app_colors.dart';

Widget navDrawer(context) {
  return Container(
    width: ScreenUtil().screenWidth,
    height: ScreenUtil().screenHeight,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/images/menu-bg.jpg",
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(
        left: 34.w,
        right: 34.w,
        top: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.close_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 31.w,
                right: 31.w,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    drawerItems("Silk"),
                    drawerItems("Silk Cotton"),
                    drawerItems("Cotton"),
                    drawerItems("Work Wear"),
                    drawerItems("Others"),
                    drawerItems("Men"),
                    drawerItems("Accessories"),
                    SizedBox(
                      height: 150.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 21.27.h),
                      child: Container(
                        width: 20.w,
                        child: Divider(
                          color: AppColors.poonolil_White.withOpacity(0.6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.89.h),
                      child: Text(
                        "WHISHLIST",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontWeight: FontWeight.w200,
                          fontSize: 11.sp,
                          color: AppColors.poonolil_White,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.89.h),
                      child: Text(
                        "REELS",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontWeight: FontWeight.w200,
                          fontSize: 11.sp,
                          color: AppColors.poonolil_White,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.89.h),
                      child: Text(
                        "POONILIL LIVE",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontWeight: FontWeight.w200,
                          fontSize: 11.sp,
                          color: AppColors.poonolil_White,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 41.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "© 2021 poonolil inc.\nAll Rights Reserved.",
                style: TextStyle(
                  fontFamily: "MadeOuterSans",
                  fontWeight: FontWeight.w300,
                  fontSize: 10.sp,
                  color: AppColors.poonolil_White.withOpacity(0.50),
                ),
              ),
              Image.asset(
                "assets/logos/poonolil.png",
                width: 57.w,
                height: 54.h,
                color: AppColors.poonolil_White.withOpacity(0.50),
              ),
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
        ],
      ),
    ),
  );
}

Widget drawerItems(title) {
  return Container(
    height: 50.h,
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: "Fligen",
              fontSize: 22.sp,
              color: AppColors.poonolil_White),
        ),
        SizedBox(
          width: 4.w,
        ),
        Image.asset(
          "assets/icons/right-down.png",
          width: 14.w,
          color: AppColors.poonolil_secondary.withOpacity(0.4),
        ),
      ],
    ),
  );
}
