
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/widgets/custom_text_field.dart';

class NavSearch extends StatelessWidget {
  const NavSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/nine.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: ScreenUtil().screenWidth,
          height: 250.h,
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(
              left: 32.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Container()),
                Text(
                  "SEARCH",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Sought",
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFAF6F1),
                    letterSpacing: 0.06,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "Tellus vel lobortis neque, urna, quisque\ntempor pellentesque ac volutpat",
                  style: TextStyle(
                    fontFamily: "MadeOuterSans",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w200,
                    color: Color(0xFFFAF6F1),
                    letterSpacing: 0.06,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 32.w,
                  ),
                  child: customTextField(Icons.search_outlined,
                      "SEARCH PRODUCTS", TextInputType.text),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Popular Searches",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Fligen",
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFAF6F1),
                    letterSpacing: 0.06,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  height: 28.h,
                  width: ScreenUtil().screenWidth,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return keyWord();
                    },
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget keyWord() {
  return Padding(
    padding: EdgeInsets.only(right: 5.w),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(13.5.r),
          ),
          color: AppColors.poonolil_primary),
      child: Center(
        child: Padding(
          padding:
              EdgeInsets.only(left: 7.w, right: 7.w, top: 5.h, bottom: 5.h),
          child: Text(
            "Kanjipuram",
            style: TextStyle(
              fontFamily: "MadeOuterSans",
              fontWeight: FontWeight.w300,
              fontSize: 11.74.sp,
              color: Color(0xFFDBB98F),
            ),
          ),
        ),
      ),
    ),
  );
}
