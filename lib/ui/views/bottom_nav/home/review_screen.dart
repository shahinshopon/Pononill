import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/widgets/app_bar.dart';
import 'package:poonolil/ui/widgets/gradient_background.dart';
import 'package:poonolil/ui/widgets/rating.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Reviews", context),
      body: bodyBackgroundImg(
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(left: 32.w, right: 32.w),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mr. Dinkan Kandoth",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.poonolil_Black,
                          letterSpacing: 0.06,
                        ),
                      ),
                      ratingWidget()
                    ],
                  ),
                  subtitle: Text(
                    "Tellus vel lobortis neque, urna, quisque tempor pellentesque ac volutpat",
                    style: TextStyle(
                      fontFamily: "MadeOuterSans",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.poonolil_Black.withOpacity(0.6),
                      letterSpacing: 0.06,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
