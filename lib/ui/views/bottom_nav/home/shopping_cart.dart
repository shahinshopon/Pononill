import 'dart:ui';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:poonolil/ui/route/route.dart' as route;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/styles/styles.dart';
import 'package:poonolil/ui/widgets/custom_button.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1 Items",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            color: AppColors.poonolil_Black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Add All To wishlist",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            color: AppColors.poonolil_Black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Container(
                      height: 107.h,
                      width: ScreenUtil().screenWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 107.h,
                            width: 111.w,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.all(
                                Radius.circular(6.r),
                              ),
                            ),
                          ),
                          Container(
                            width: 145.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Black Satin Saree Supreeme",
                                  style: TextStyle(
                                    fontFamily: "Fligen",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.poonolil_Black,
                                    letterSpacing: 0.06,
                                  ),
                                ),
                                Text(
                                  "Small | Black",
                                  style: TextStyle(
                                    fontFamily: "MadeOuterSans",
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w200,
                                    color:
                                        AppColors.poonolil_Black.withOpacity(0.6),
                                    letterSpacing: 0.06,
                                  ),
                                ),
                                Text(
                                  "₹ 1400",
                                  style: TextStyle(
                                    fontFamily: "MadeOuterSans",
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.poonolil_Black,
                                    letterSpacing: 0.06,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 44.w,
                            height: 27.h,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.69.r)),
                              color: AppColors.poonolil_primary.withOpacity(0.3),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      fontFamily: "MadeOuterSans",
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.poonolil_Black,
                                      letterSpacing: 0.06,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_downward,
                                    color: AppColors.poonolil_Black,
                                    size: 10.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      height: 107.h,
                      width: ScreenUtil().screenWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 107.h,
                            width: 111.w,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(6.r),
                              ),
                            ),
                          ),
                          Container(
                            width: 145.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Black Satin Saree Supreeme",
                                  style: TextStyle(
                                    fontFamily: "Fligen",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.poonolil_Black,
                                    letterSpacing: 0.06,
                                  ),
                                ),
                                Text(
                                  "Small | Black",
                                  style: TextStyle(
                                    fontFamily: "MadeOuterSans",
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w200,
                                    color:
                                        AppColors.poonolil_Black.withOpacity(0.6),
                                    letterSpacing: 0.06,
                                  ),
                                ),
                                Text(
                                  "₹ 1400",
                                  style: TextStyle(
                                    fontFamily: "MadeOuterSans",
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.poonolil_Black,
                                    letterSpacing: 0.06,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 44.w,
                            height: 27.h,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.69.r)),
                              color: AppColors.poonolil_primary.withOpacity(0.3),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      fontFamily: "MadeOuterSans",
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.poonolil_Black,
                                      letterSpacing: 0.06,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_downward,
                                    color: AppColors.poonolil_Black,
                                    size: 10.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    Styles.transparentDivider(),
                    recentlyAdded()
                  ],
                ),
              ),
            ),
            addToCartButton(
              "5567",
              "GO TO DELIVERY",
              () {},
            ),
            SizedBox(
              height: 23.h,
            ),
          ],
        ),
      ),
    );
  }
}

Widget recentlyAdded() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recently Added",
          style: TextStyle(
            fontFamily: "Fligen",
            fontSize: 22.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.poonolil_Black,
            letterSpacing: 0.06,
          ),
        ),
        SizedBox(
          height: 13.h,
        ),
        Container(
          height: 353.h,
          width: ScreenUtil().screenWidth,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: InkWell(
                  onTap: () => Get.toNamed(route.product_screen),
                  child: Container(
                    width: 256.w,
                    height: 353.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.r),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/thirteen.png",
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            width: ScreenUtil().screenWidth,
                            height: 105.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF).withOpacity(0.2),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                  15.r,
                                ),
                                bottomRight: Radius.circular(
                                  15.r,
                                ),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                  15.r,
                                ),
                                bottomRight: Radius.circular(
                                  15.r,
                                ),
                              ),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 50.0,
                                  sigmaY: 0.0,
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    splashColor: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Black Satin Saree",
                                          style: TextStyle(
                                            fontFamily: "Ravine",
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.poonolil_Black,
                                            letterSpacing: 0.06,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 2.h, bottom: 2.h),
                                          child: Container(
                                            width: 80.w,
                                            height: 1.h,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "₹ 567",
                                              style: TextStyle(
                                                fontFamily: "MadeOuterSans",
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w300,
                                                color: AppColors.poonolil_Black,
                                                letterSpacing: 0.06,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.w, right: 10.w),
                                              child: Container(
                                                width: 2.w,
                                                height: 20.h,
                                                color: Colors.black87
                                                    .withOpacity(0.5),
                                              ),
                                            ),
                                            Text(
                                              "ADD TO CART",
                                              style: TextStyle(
                                                fontFamily: "MadeOuterSans",
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w200,
                                                color: AppColors.poonolil_Black,
                                                letterSpacing: 0.06,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -20.h,
                            right: 15.w,
                            child: SizedBox(
                              height: 38.h,
                              width: 38.w,
                              child: FloatingActionButton(
                                backgroundColor: Color(0xFFC49B78),
                                onPressed: () {},
                                child: Icon(
                                  Icons.favorite_outline_outlined,
                                  size: 18.w,
                                ),
                                heroTag: null,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
