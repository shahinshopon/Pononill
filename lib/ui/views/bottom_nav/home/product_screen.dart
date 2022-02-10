import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/styles/styles.dart';
import 'package:poonolil/ui/widgets/app_bar.dart';
import 'package:poonolil/ui/widgets/custom_button.dart';
import 'package:poonolil/ui/widgets/gradient_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/ui/widgets/rating.dart';
import 'package:poonolil/ui/route/route.dart' as route;

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var _currentIndex = 0;
  List _images = [
    "assets/images/one.png",
    "assets/images/nine.png",
    "assets/images/login-bg.jpg"
  ];

  var description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitant id nulla consequat nec tellus congue egestas. Facilisis maecenas aliquet turpis bibendum nisl vitae. Vel morbi quis ipsum et leo.";

  double _sliderValue = 60.0;
  double _sliderValueTwo = 85.0;


 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Black Satin Saree", context),
      body: bodyBackgroundImg(
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 740.h,
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _images.length,
                        onPageChanged: (val) {
                          setState(() {
                            _currentIndex = val;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            height: 737.h,
                            width: ScreenUtil().screenWidth,
                            color: Colors.black,
                            child: Image.asset(
                              _images[index],
                              fit: BoxFit.fill,
                            ),
                          );
                        }),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: ScreenUtil().screenWidth,
                      child: Padding(
                        padding: EdgeInsets.only(left: 32.w, right: 32.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 38.h,
                                width: 38.w,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.black54,
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.favorite_outline_outlined,
                                    size: 18.w,
                                  ),
                                  heroTag: null,
                                ),
                              ),
                            ),
                            Center(
                              child: DotsIndicator(
                                dotsCount: 3,
                                position: _currentIndex.toDouble(),
                                axis: Axis.horizontal,
                                reversed: false,
                                decorator: DotsDecorator(
                                    activeColor: Colors.white,
                                    size: Size(45.w, 5.h),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    activeShape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    activeSize: Size(50.w, 5.h),
                                    spacing:
                                        EdgeInsets.only(right: 8.w, top: 15.h)),
                              ),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Text(
                              "Black Satin Saree",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Ravine",
                                fontSize: 23.sp,
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
                              height: 14.h,
                            ),
                            ratingWidget(),
                            SizedBox(
                              height: 14.h,
                            ),
                            addToCartButton(
                              "576",
                              "ADD TO CART",
                              () {},
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.free_breakfast_sharp,
                                      size: 18.w,
                                      color: Color(0xFFDBB98F),
                                    
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "Free Shipping",
                                      style: TextStyle(
                                        fontFamily: "MadeOuterSans",
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w200,
                                        color: AppColors.poonolil_White
                                            .withOpacity(0.6),
                                        letterSpacing: 0.06,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 30.w,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.breakfast_dining_outlined,
                                      size: 18.w,
                                      color: Color(0xFFDBB98F),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "BRANDNEW30",
                                      style: TextStyle(
                                        fontFamily: "MadeOuterSans",
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w200,
                                        color: AppColors.poonolil_White
                                            .withOpacity(0.6),
                                        letterSpacing: 0.06,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 33.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 27.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.w, right: 32.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Sizing Guide",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w300,
                          color: AppColors.poonolil_Black,
                          letterSpacing: 0.06,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontFamily: "Fligen",
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.poonolil_Black,
                        letterSpacing: 0.06,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontFamily: "MadeOuterSans",
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w300,
                        color: AppColors.poonolil_Black.withOpacity(0.6),
                        letterSpacing: 0.06,
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Image.asset(
                      "assets/images/grid_image.png",
                      height: 350.h,
                      width: ScreenUtil().screenWidth,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Center(
                      child: Text(
                        "More Details",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w300,
                          color: AppColors.poonolil_Black,
                          letterSpacing: 0.06,
                        ),
                      ),
                    ),
                    Divider(),
                    Text(
                      "What Customers Say",
                      style: TextStyle(
                        fontFamily: "Fligen",
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.poonolil_Black,
                        letterSpacing: 0.06,
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "4.3",
                              style: TextStyle(
                                fontFamily: "Ravine",
                                fontSize: 43.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.poonolil_Black,
                                letterSpacing: 0.06,
                              ),
                            ),
                            Text(
                              "300 reviews",
                              style: TextStyle(
                                fontFamily: "MadeOuterSans",
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w400,
                                color:
                                    AppColors.poonolil_Black.withOpacity(0.6),
                                letterSpacing: 0.06,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SliderTheme(
                                  data: SliderThemeData(
                                    trackHeight: 3.h,
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 0.0),
                                    activeTrackColor: AppColors.poonolil_primary,
                                    inactiveTrackColor:
                                        AppColors.poonolil_primary.withOpacity(0.4),
                                    trackShape: RectangularSliderTrackShape(),
                                    overlayColor: Colors.red.withAlpha(32),
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 0),
                                  ),
                                  child: SizedBox(
                                    height: 12.h,
                                    width: 150.w,
                                    child: Slider(
                                      label: "Fit",
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
                                  width: 5.w,
                                ),
                                Text(
                                  "As Expected",
                                  style: TextStyle(
                                    fontFamily: "MadeOuterSans",
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w200,
                                    color: AppColors.poonolil_Black
                                        .withOpacity(0.6),
                                    letterSpacing: 0.06,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SliderTheme(
                                  data: SliderThemeData(
                                    trackHeight: 3.h,
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 0.0),
                                    activeTrackColor: AppColors.poonolil_primary,
                                    inactiveTrackColor:
                                        AppColors.poonolil_primary.withOpacity(0.4),
                                    trackShape: RectangularSliderTrackShape(),
                                    overlayColor: Colors.red.withAlpha(32),
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 0),
                                  ),
                                  child: SizedBox(
                                    height: 12.h,
                                    width: 150.w,
                                    child: Slider(
                                      label: "Strech",
                                      value: _sliderValueTwo,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _sliderValueTwo = newValue;
                                        });
                                      },
                                      min: 0.0,
                                      max: 100.0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Perfect",
                                  style: TextStyle(
                                    fontFamily: "MadeOuterSans",
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w200,
                                    color: AppColors.poonolil_Black
                                        .withOpacity(0.6),
                                    letterSpacing: 0.06,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Styles.transparentDivider(),
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
                    SizedBox(
                      height: 11.h,
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
                          onTap: () => Get.toNamed(route.review_screen),
                          splashColor: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "MORE REVIEWS",
                                style: TextStyle(
                                  fontFamily: "MadeOuterSans",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w200,
                                  color: AppColors.poonolil_primary,
                                  letterSpacing: 0.06,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              Container(
                height: 150.h,
                width: ScreenUtil().screenWidth,
                color: Colors.white.withOpacity(0.56),
                child: Padding(
                  padding: EdgeInsets.only(left: 32.w, right: 32.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      addToCartButton(
                        "576",
                        "ADD TO CART",
                        () {},
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.free_breakfast_sharp,
                                size: 18.w,
                                color: Color(0xFFDBB98F),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Free Shipping",
                                style: TextStyle(
                                  fontFamily: "MadeOuterSans",
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w200,
                                  color:
                                      AppColors.poonolil_Black.withOpacity(0.6),
                                  letterSpacing: 0.06,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.breakfast_dining_outlined,
                                size: 18.w,
                                color: Color(0xFFDBB98F),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "BRANDNEW30",
                                style: TextStyle(
                                  fontFamily: "MadeOuterSans",
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w200,
                                  color:
                                      AppColors.poonolil_Black.withOpacity(0.6),
                                  letterSpacing: 0.06,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
