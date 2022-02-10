import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/widgets/custom_button.dart';
import 'package:poonolil/ui/widgets/gradient_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/ui/route/route.dart' as route;

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _pinController = TextEditingController();

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: bodyBackgroundImg(
          Padding(
            padding: EdgeInsets.only(left: 31.w, right: 31.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Center(
                  child: Image.asset(
                    "assets/logos/poonolil-logo.png",
                    color: Colors.black,
                    width: 105.w,
                    height: 56.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 37.h,
                ),
                Text(
                  "Welcome Back 👋",
                  style: TextStyle(
                    fontFamily: "MadeOuterSans",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF170906),
                    height: 1.h,
                  ),
                ),
                Text(
                  "Balendu Divakar",
                  style: TextStyle(
                    fontFamily: "Sought",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF170906),
                    height: 1.h,
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
                    color: AppColors.poonolil_Black.withOpacity(0.5),
                    height: 1.3636363636363635.h
                  ),
                ),
                SizedBox(
                  height: 72.h,
                ),
                Text(
                  "Enter in the OTP",
                  style: TextStyle(
                    fontFamily: "MadeOuterSans",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w200,
                    color: AppColors.poonolil_Black.withOpacity(0.6),
                    height: 1.25,

                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                PinCodeTextField(
                  controller: _pinController,
                  appContext: context,
                  length: 6,
                  onChanged: (val) {},
                  enablePinAutofill: true,
                  obscureText: false,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    inactiveColor: Color(0xFF96351E).withOpacity(0.5),
                    inactiveFillColor: Colors.deepOrange,
                    fieldHeight: 48.h,
                    fieldWidth: 48.h,
                    activeFillColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Didn't Get the OTP ? ",
                      style: TextStyle(
                        fontFamily: "MadeOuterSans",
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w200,
                        color: AppColors.poonolil_Black.withOpacity(0.6),
                        height: 1.3636363636363635.h
                      ),
                      children: [
                        TextSpan(
                          text: "SEND IT AGAIN",
                          style: TextStyle(
                            
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w200,
                            color: AppColors.poonolil_primary,
                            
                          ),
                          recognizer: new TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                customButtonPrairieSand(
                  "Continue",
                  () => Get.toNamed(route.bottom_nav_controller),
                ),
                SizedBox(
                  height: 37.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
