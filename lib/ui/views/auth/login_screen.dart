import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poonolil/ui/widgets/custom_text_field.dart';
import 'package:poonolil/ui/widgets/auth_type.dart';
import 'package:poonolil/ui/widgets/custom_button.dart';
import 'package:poonolil/ui/route/route.dart' as route;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/login-bg.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 32.w, right: 32.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 55.h,
                  ),
                  Image.asset(
                    "assets/logos/poonolil-logo.png",
                    height: 122.h,
                    width: 122.w,
                  ),
                  Expanded(child: Container()),
                  customTextField(Icons.phone_android_outlined,"PHONE NUMBER",TextInputType.number),
                  SizedBox(
                    height: 17.h,
                  ),
                  customButtonPrairieSand(
                    "Continue",
                    () => Get.toNamed(route.otp_screen),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    "OR SIGN IN WITH",
                    style: TextStyle(
                      fontFamily: "MadeOuterSans",
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w200,
                      color: Color(0xFFFAF6F1),
                      letterSpacing: 0.06,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      authType("assets/icons/apple.png"),
                      authType("assets/icons/google.png"),
                      authType("assets/icons/facebook.png"),
                    ],
                  ),
                  SizedBox(
                    height: 39.12.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
