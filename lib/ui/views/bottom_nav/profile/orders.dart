import 'package:flutter/material.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/styles/styles.dart';
import 'package:poonolil/ui/widgets/app_bar.dart';
import 'package:poonolil/ui/widgets/gradient_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Orders", context),
      body: bodyBackgroundImg(
        Padding(
          padding: EdgeInsets.only(
            left: 31.w,
            right: 31.w,
            bottom: 30.h,
          ),
          child: Column(
            children: [

              
              Styles.transparentDivider(),
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    Container(
                      width: ScreenUtil().screenWidth,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 26.w, right: 26.w, top: 19.h, bottom: 19.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery On 21 July",
                              style: TextStyle(
                                fontFamily: "MadeOuterSans",
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF170906),
                                letterSpacing: 0.06,
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Container(
                                height: 55.h,
                                width: 57.w,
                                color: Colors.blue,
                              ),
                              title: Text(
                                "Black Satin Saree Supreeme",
                                style: TextStyle(
                                  fontFamily: "Fligen",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF170906),
                                  letterSpacing: 0.06,
                                ),
                              ),
                              subtitle: Text(
                                "Small | Black",
                                style: TextStyle(
                                  fontFamily: "MadeOuterSans",
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFF170906).withOpacity(0.6),
                                  letterSpacing: 0.06,
                                ),
                              ),
                              trailing: Text(
                                "1",
                                style: TextStyle(
                                  fontFamily: "MadeOuterSans",
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFF170906),
                                  letterSpacing: 0.06,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEBBD1C).withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 26.w, right: 26.w, top: 19.h, bottom: 19.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/shipping-box.png",
                                      height: 20.h,
                                      width: 18.w,
                                      color: Color(0xFFEBBD1C),
                                    ),
                                    SizedBox(
                                      width: 7.w,
                                    ),
                                    Text(
                                      "IN-TRANSIT",
                                      style: TextStyle(
                                        fontFamily: "MadeOuterSans",
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFEBBD1C),
                                        letterSpacing: 0.06,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "1460",
                                  style: TextStyle(
                                    fontFamily: "Fligen",
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.poonolil_Black,
                                    letterSpacing: 0.06,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "₹ 3,584",
                              style: TextStyle(
                                fontFamily: "MadeOuterSans",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w300,
                                color: AppColors.poonolil_Black,
                                letterSpacing: 0.06,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            
            
            ],
          ),
        ),
      ),
    );
  }
}
