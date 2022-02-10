import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/views/bottom_nav/home/nav_home.dart';
import 'package:poonolil/ui/views/bottom_nav/live/nav_live.dart';
import 'package:poonolil/ui/views/bottom_nav/profile/nav_profile.dart';
import 'package:poonolil/ui/views/bottom_nav/search/nav_search.dart';
import 'package:poonolil/ui/views/bottom_nav/shop/nav_shop.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/ui/widgets/gradient_background.dart';
import 'package:poonolil/ui/widgets/nav_drawer.dart';
import 'package:poonolil/ui/route/route.dart' as route;

class BottomNavController extends StatefulWidget {
  BottomNavController({Key? key}) : super(key: key);

  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;

  final _navPages = [
    NavHome(),
    NavLive(),
    NavSearch(),
    NavShop(),
    NavProfile(),
  ];

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: navDrawer(context),
      bottomNavigationBar: Container(
        height: 76.h,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.poonolil_primary,
          selectedIconTheme: IconThemeData(size: 24.h),
          selectedLabelStyle: TextStyle(
            fontSize: 9.sp,
            fontFamily: "MadeOuterSans",
            fontWeight: FontWeight.w400,
          ),
          unselectedItemColor: Color(0xFF231F20),
          unselectedIconTheme: IconThemeData(
            size: 24.h,
            color: Color(0xFF231F20),
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 9.sp,
            fontFamily: "MadeOuterSans",
            fontWeight: FontWeight.w400,
          ),
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          onTap: (int val) {
            setState(() {
              _currentIndex = val;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.h),
                child: Image.asset(
                  "assets/icons/home.png",
                  width: 20.h,
                  color: _currentIndex == 0
                      ? AppColors.poonolil_primary
                      : Color(0xFF231F20),
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.h),
                child: Image.asset(
                  "assets/icons/radio.png",
                  width: 20.h,
                  color: _currentIndex == 1
                      ? AppColors.poonolil_primary
                      : Color(0xFF231F20),
                ),
              ),
              label: "Live",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.h),
                child: Image.asset(
                  "assets/icons/loupe.png",
                  width: 20.h,
                  color: _currentIndex == 2
                      ? AppColors.poonolil_primary
                      : Color(0xFF231F20),
                ),
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.h),
                child: Image.asset(
                  "assets/icons/shop-bag.png",
                  width: 20.h,
                  color: _currentIndex == 3
                      ? AppColors.poonolil_primary
                      : Color(0xFF231F20),
                ),
              ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.h),
                child: Image.asset(
                  "assets/icons/user.png",
                  width: 20.h,
                  color: _currentIndex == 4
                      ? AppColors.poonolil_primary
                      : Color(0xFF231F20),
                ),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          bodyBackgroundImg(
            _navPages[_currentIndex],
          ),
          _currentIndex != 1 && _currentIndex != 4
              ? Container(
                  width: ScreenUtil().screenWidth,
                  height: 93.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF).withOpacity(0.2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.r),
                    ),
                  ),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 20.0,
                        sigmaY: 20.0,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 25.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Image.asset(
                                "assets/icons/menu.png",
                                width: 24.w,
                                height: 24.h,
                                fit: BoxFit.fill,
                              ),
                              onPressed: () =>
                                  scaffoldKey.currentState?.openDrawer(),
                            ),
                            Image.asset(
                              "assets/logos/poonolil-logo.png",
                              width: 100.w,
                              height: 41.h,
                              fit: BoxFit.cover,
                              color: Colors.black,
                            ),
                            IconButton(
                              onPressed: () =>
                                  Get.toNamed(route.cart_controller_screen),
                              icon: Image.asset(
                                "assets/icons/cart.png",
                                width: 24.w,
                                height: 24.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
