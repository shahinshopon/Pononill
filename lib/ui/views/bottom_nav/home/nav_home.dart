import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/styles/styles.dart';
import 'package:poonolil/ui/views/wp-api.dart';
import 'package:poonolil/ui/widgets/custom_button.dart';
import 'package:poonolil/ui/route/route.dart' as route;

class NavHome extends StatefulWidget {
  NavHome({Key? key}) : super(key: key);

  @override
  State<NavHome> createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
//    Future getProducts() async {
//   WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
//       url: "https://poonolilsilks.com",
//       consumerKey: "ck_3fe8f823a123b55d0555a95bc37374b2d87525b5",
//       consumerSecret: "cs_3590a88815729150eb15dc81e05700ca0e9f2c5e");
//   var products = await wooCommerceAPI.getAsync('wp-json/wc/v3/products');
//   return products;
// }


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 737.h,
                  width: ScreenUtil().screenWidth,
                  color: Colors.black,
                  child: Image.asset(
                    "assets/images/one.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: ScreenUtil().screenWidth,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.w, right: 32.w),
                      child: Column(
                        children: [
                          Text(
                            "lorem ipsum",
                            style: TextStyle(
                              fontFamily: "MadeOuterSans",
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFFFAF6F1),
                              letterSpacing: 0.06,
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Text(
                            "REDIFINDING\nBEAUTY",
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
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "MadeOuterSans",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w200,
                              color: Color(0xFFFAF6F1),
                              letterSpacing: 0.06,
                            ),
                          ),
                          SizedBox(
                            height: 44.h,
                          ),
                          customButtonPoonolilWhite(
                            "GO TO COLLECTION",
                            () {},
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
              height: 31.h,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.w,
                    ),
                    child: Text(
                      "Shop By Category",
                      style: TextStyle(
                        fontFamily: "Fligen",
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.poonolil_Black,
                        height: 1.h,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 13.h,
                  // ),
                Container(
                   height: 150.h,
                   width: ScreenUtil().screenWidth,
                   child: FutureBuilder(
                                      future: fetchProducts(),
                                      builder: (context,snapshot){
                                        if(snapshot.hasData){
                                          return ListView.builder(
                                            itemCount: 5,
                                            //as Map<dynamic,dynamic>
                                            itemBuilder: ( context, index){
                                              var wpdata=snapshot.data! as Map<dynamic,dynamic>;                                     
                                              return Text(wpdata['title']["rendered"]);                                       
                                          });
                                        }

                                        return CircularProgressIndicator(
                                          
                                        );
                                      }),
                 ),
                  Container(
                    height: 103.h,
                    width: ScreenUtil().screenWidth,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: index == 0 ? 32.w : 0, right: 12.w),
                          child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 40.r,
                                  backgroundColor: Colors.amber,
                                  
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  "SILK COTTON",
                                  style: TextStyle(
                                    fontFamily: "MadeOuterSans",
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w200,
                                    color: AppColors.poonolil_Black,
                                    letterSpacing: 0.06,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            bridalCollection(),
            SizedBox(
              height: 50.h,
            ),
            bestSeller(),
            SizedBox(
              height: 50.h,
            ),
            discount(),
            SizedBox(
              height: 74.h,
            ),
            Stack(
              children: [
                Container(
                  height: 340.h,
                  width: ScreenUtil().screenWidth,
                  color: Colors.black,
                  child: Image.asset(
                    "assets/images/fourteen.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: ScreenUtil().screenWidth,
                    height: 340.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.w, right: 32.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Hidden Gems",
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
                                height: 8.h,
                              ),
                              Text(
                                "Tellus vel lobortis neque, urna, quisque tempor pellentesque ac volutpat",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "MadeOuterSans",
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFFFAF6F1).withOpacity(0.6),
                                  letterSpacing: 0.06,
                                ),
                              ),
                            ],
                          ),
                          customButtonPoonolilWhite(
                            "EXPLORE THE GEMS",
                            () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            lookBooks(),
            SizedBox(
              height: 37.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Poonolil.png",
                  height: 50.h,
                  color: Colors.black,
                ),
                Image.asset(
                  "assets/images/live.png",
                  height: 50.h,
                  color: Colors.redAccent,
                ),
              ],
            ),
            SizedBox(
              height: 23.h,
            ),
            bridalCollection(),
            SizedBox(
              height: 31.h,
            ),
            bridalCollection(),
            SizedBox(
              height: 61.h,
            ),
          ],
        ),
      ),
    );
  }
}

Widget bridalCollection() {
  return Padding(
    padding: EdgeInsets.only(left: 32.w, right: 32.w),
    child: Container(
      width: ScreenUtil().screenWidth,
      height: 353.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.r),
        ),
        image: DecorationImage(
            image: AssetImage(
              "assets/images/twelve.png",
            ),
            fit: BoxFit.fill),
        boxShadow: Styles.shadowEffect(),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: ScreenUtil().screenWidth,
          height: 93.h,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF).withOpacity(0.5),
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
                sigmaX: 20.0,
                sigmaY: 20.0,
              ),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bridal Collection",
                        style: TextStyle(
                          fontFamily: "Ravine",
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.poonolil_Black,
                          letterSpacing: 0.06,
                        ),
                      ),
                      Text(
                        "Tellus vel lobortis neque, urna, quisque tempor pellentesque ac volutpat",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w200,
                          color: AppColors.poonolil_Black,
                          letterSpacing: 0.06,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget bestSeller() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 32.w,
          ),
          child: Text(
            "Best Sellers",
            style: TextStyle(
              fontFamily: "Fligen",
              fontSize: 22.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.poonolil_Black,
              letterSpacing: 0.06,
            ),
          ),
        ),
        SizedBox(
          height: 13.h,
        ),
        Container(
          height: 360.h,
          width: ScreenUtil().screenWidth,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? 32.w : 0, right: 23.w, bottom: 10.h),
                child: InkWell(
                  onTap: () => Get.toNamed(route.product_screen),
                  child: Container(
                    width: 256.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.r),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/thirteen.png",
                          ),
                          fit: BoxFit.fill),
                      boxShadow: Styles.shadowEffect(),
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
                              color: Color(0xFFFFFFFF).withOpacity(0.5),
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
                                  sigmaX: 20.0,
                                  sigmaY: 20.0,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
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

Widget discount() {
  return Padding(
    padding: EdgeInsets.only(left: 32.w, right: 32.w),
    child: Container(
      width: ScreenUtil().screenWidth,
      height: 322.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.r),
          ),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/offer.png",
              ),
              fit: BoxFit.fill),
          boxShadow: Styles.shadowEffect()),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: ScreenUtil().screenWidth,
          height: 93.h,
          decoration: BoxDecoration(
            color: Color(0xFF9480a0),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                15.r,
              ),
              bottomRight: Radius.circular(
                15.r,
              ),
            ),
          ),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 18.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get 10% Discount",
                    style: TextStyle(
                      fontFamily: "Ravine",
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.poonolil_Black,
                      letterSpacing: 0.06,
                    ),
                  ),
                  Text(
                    "Get Poonolil Lux and get loyalty points on top of discounts.",
                    style: TextStyle(
                      fontFamily: "MadeOuterSans",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w200,
                      color: AppColors.poonolil_Black,
                      letterSpacing: 0.06,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget lookBooks() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 32.w,
          ),
          child: Text(
            "Lookbooks",
            style: TextStyle(
              fontFamily: "Fligen",
              fontSize: 22.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.poonolil_Black,
              letterSpacing: 0.06,
            ),
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
                padding: EdgeInsets.only(
                    left: index == 0 ? 32.w : 0, right: 12.w, bottom: 10.h),
                child: Container(
                  width: 266.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.r),
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/fifteen.png",
                        ),
                        fit: BoxFit.fill),
                    boxShadow: Styles.shadowEffect(),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: ScreenUtil().screenWidth,
                      height: 81.h,
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
                            sigmaX: 20.0,
                            sigmaY: 20.0,
                          ),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 18.w, right: 18.w, top: 18.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Manja Kili",
                                    style: TextStyle(
                                      fontFamily: "Ravine",
                                      fontSize: 23.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.poonolil_Black,
                                      letterSpacing: 0.06,
                                    ),
                                  ),
                                  Text(
                                    "Tellus vel lobortis neque, urna, quisque tempor pellentesque ac volutpat",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: "MadeOuterSans",
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w200,
                                      color: AppColors.poonolil_Black,
                                      letterSpacing: 0.06,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
