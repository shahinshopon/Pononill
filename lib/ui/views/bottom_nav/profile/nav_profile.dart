import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/widgets/custom_button.dart';
import 'package:poonolil/ui/widgets/profile_items.dart';
import 'package:poonolil/ui/route/route.dart' as route;

class NavProfile extends StatefulWidget {
  const NavProfile({Key? key}) : super(key: key);

  @override
  State<NavProfile> createState() => _NavProfileState();
}

class _NavProfileState extends State<NavProfile> {
  double _sliderValue = 70.0;

  memberIDDialog(context) {
    return showDialog(
      context: context,
      builder: (builder) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            )),
            height: 572.h,
            child: Column(
              children: [
                Container(
                  height: 150.h,
                  width: ScreenUtil().screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/offer.png",
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Image.asset(
                  "assets/images/qr-scanner.png",
                  height: 138.h,
                  width: 138.w,
                  fit: BoxFit.fill,
                ),
                Text(
                  "iD : 17201623",
                  style: TextStyle(
                    fontFamily: "MadeOuterSans",
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF170906),
                    letterSpacing: 0.06,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "MEMBER NAME",
                            style: TextStyle(
                              fontFamily: "MadeOuterSans",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF170906),
                              letterSpacing: 0.06,
                            ),
                          ),
                          Text(
                            "Balendu Divakar",
                            style: TextStyle(
                              fontFamily: "MadeOuterSans",
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w200,
                              color: Color(0xFF170906),
                              letterSpacing: 0.06,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "POINTS",
                            style: TextStyle(
                              fontFamily: "MadeOuterSans",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF170906),
                              letterSpacing: 0.06,
                            ),
                          ),
                          Text(
                            "368",
                            style: TextStyle(
                              fontFamily: "MadeOuterSans",
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w200,
                              color: Color(0xFF170906),
                              letterSpacing: 0.06,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      Container(
                        width: ScreenUtil().screenWidth,
                        height: 49.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6.r),
                            ),
                            border: Border.all(color: AppColors.poonolil_primary)),
                        child: Material(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.r),
                          ),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6.r),
                            ),
                            onTap: () => Navigator.pop(context),
                            splashColor: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "CLOSE",
                                  style: TextStyle(
                                    fontFamily: "MadeOuterSans",
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w200,
                                    color: AppColors.poonolil_primary,
                                    letterSpacing: 0.06,
                                  ),
                                ),
                                Icon(
                                  Icons.close_outlined,
                                  size: 16.w,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 31.w, right: 31.w, top: 70.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi👋\nBalendu Divakar",
                style: TextStyle(
                  fontFamily: "Sought",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF170906),
                  letterSpacing: 0.06,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                "+91 7012161008",
                style: TextStyle(
                  fontFamily: "MadeOuterSans",
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w200,
                  color: Color(0xFF170906),
                  letterSpacing: 0.06,
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  // width: ScreenUtil().screenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "349",
                            style: TextStyle(
                              fontFamily: "Sought",
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.poonolil_primary,
                              letterSpacing: 0.06,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            "Points",
                            style: TextStyle(
                              fontFamily: "MadeOuterSans",
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w200,
                              color: Color(0xFF170906),
                              letterSpacing: 0.06,
                            ),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          trackHeight: 3.h,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 0.0),
                          activeTrackColor: AppColors.poonolil_primary,
                          inactiveTrackColor:
                              AppColors.poonolil_primary.withOpacity(0.4),
                          trackShape: RectangularSliderTrackShape(),
                          overlayColor: Colors.red.withAlpha(32),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 0),
                        ),
                        child: SizedBox(
                          height: 12.h,
                          width: ScreenUtil().screenWidth,
                          child: Slider(
                            value: _sliderValue,
                            onChanged: (newValue) {
                              setState(() {
                                _sliderValue = newValue;
                              });
                            },
                            min: 0.0,
                            max: 100.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Tellus vel lobortis neque, urna, quisque tempor pellentesque ac volutpat",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF170906),
                          letterSpacing: 0.06,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Container(
                        width: ScreenUtil().screenWidth,
                        height: 49.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6.r),
                            ),
                            border: Border.all(color: AppColors.poonolil_primary)),
                        child: Material(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.r),
                          ),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6.r),
                            ),
                            onTap: () => memberIDDialog(context),
                            splashColor: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "VIEW MEMBER ID",
                                  style: TextStyle(
                                    fontFamily: "MadeOuterSans",
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w200,
                                    color: AppColors.poonolil_primary,
                                    letterSpacing: 0.06,
                                  ),
                                ),
                                Image.asset(
                                  "assets/icons/barcode.png",
                                  width: 22.w,
                                  fit: BoxFit.fill,
                                  color: AppColors.poonolil_Black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
              ListTileTheme(
                contentPadding: EdgeInsets.all(0),
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.only(left: 20.w, right: 20.w),
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/icons/person.png",
                        width: 14.w,
                        height: 16.h,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "MY ACCOUNT",
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
                  children: [
                    Container(
                      width: ScreenUtil().screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          profileDropDownButton(
                            "Personal Details",
                            () {},
                          ),
                          profileDropDownButton(
                            "Refunds",
                            () {},
                          ),
                          profileDropDownButton(
                            "Payment Settings",
                            () {},
                          ),
                          profileDropDownButton(
                            "Reviews",
                            () {},
                          ),
                          profileDropDownButton(
                            "Change Password",
                            () {},
                          ),
                          profileDropDownButton(
                            "Delete Account",
                            () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ListTileTheme(
                contentPadding: EdgeInsets.all(0),
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.only(left: 20.w, right: 20.w),
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/icons/lux.png",
                        width: 14.w,
                        height: 16.h,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "POONOLIL LUX",
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
                  children: [
                    Container(
                      width: ScreenUtil().screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          profileDropDownButton(
                            "Point History",
                            () {},
                          ),
                          profileDropDownButton(
                            "Claimed Points",
                            () {},
                          ),
                          profileDropDownButton(
                            "Membership Information",
                            () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              profileItems(
                "assets/icons/person.png",
                "ADDRESS",
                () => Get.toNamed(route.users_address_screen),
              ),
              profileItems(
                "assets/icons/shipping-box.png",
                "ORDERS",
                () => Get.toNamed(route.orders_screen),
              ),
              profileItems(
                "assets/icons/fab.png",
                "WHSHLIST",
                () => Get.toNamed(route.wishlist_screen),
              ),
              Divider(),
              profileItems(
                "assets/icons/question-circle-outlined.png",
                "FAQ",
                () {},
              ),
              profileItems(
                "assets/icons/headset-help.png",
                "HELP CENTER",
                () {},
              ),
              profileItems(
                "assets/icons/carbon_settings.png",
                "SETINGS",
                () {},
              ),
              Divider(),
              moreItem(
                "Terms of Service",
                () {},
              ),
              moreItem(
                "Sales Policy",
                () {},
              ),
              moreItem(
                "Privacy Policy",
                () {},
              ),
              moreItem(
                "Return and Refund Policy",
                () {},
              ),
              SizedBox(
                height: 50.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/logos/poonolil.png",
                      width: 57.w,
                      height: 54.h,
                      color: AppColors.poonolil_Black.withOpacity(0.5)),
                  Text(
                    "© 2021 poonolil inc.\nAll Rights Reserved.",
                    style: TextStyle(
                      fontFamily: "MadeOuterSans",
                      fontWeight: FontWeight.w300,
                      fontSize: 10.sp,
                      color: AppColors.poonolil_Black.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
