import 'package:flutter/material.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget profileItems(leading, title, onClick) {
  return ListTileTheme(
    contentPadding: EdgeInsets.all(0),
    child: ListTile(
      title: Row(
        children: [
          Image.asset(
            leading,
            width: 14.w,
            height: 16.h,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 14.sp,
                fontFamily: "MadeOuterSans",
                fontWeight: FontWeight.w300,
                color: AppColors.poonolil_Black),
          ),
        ],
      ),
      trailing: Image.asset(
        "assets/icons/right-down.png",
        width: 12.w,
        fit: BoxFit.fill,
        color: Color(0xFF170906).withOpacity(0.5),
      ),
      onTap: onClick,
    ),
  );
}

Widget moreItem(title, onClick) {
  return InkWell(
    child: Padding(
      padding:  EdgeInsets.only(bottom: 6.h),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 11.sp,
            fontFamily: "MadeOuterSans",
            fontWeight: FontWeight.w300,
            color: AppColors.poonolil_Black),
      ),
    ),
    onTap: onClick,
  );
}
