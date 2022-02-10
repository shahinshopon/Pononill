import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/views/bottom_nav/home/delivery.dart';
import 'package:poonolil/ui/views/bottom_nav/home/payment.dart';
import 'package:poonolil/ui/views/bottom_nav/home/shopping_cart.dart';
import 'package:poonolil/ui/widgets/app_bar.dart';
import 'package:poonolil/ui/widgets/gradient_background.dart';

class CartController extends StatefulWidget {
  const CartController({Key? key}) : super(key: key);

  @override
  State<CartController> createState() => _CartControllerState();
}

class _CartControllerState extends State<CartController> {
  int _currentIndex = 0;
  List _appBarTitles = ["Shopping Cart", "Delivery", "Payment"];

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(_appBarTitles[_currentIndex], context),
      body: bodyBackgroundImg(
        Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            cartItems(
              _currentIndex,
            ),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.only(top: 17.h),
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  children: [
                    ShoppingCart(),
                    Delivery(),
                    Payment(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget cartItems(value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Image.asset(
            "assets/icons/shop-bag.png",
            height: 22.h,
            width: 22.h,
            fit: BoxFit.fill,
            color: value == 0 ? AppColors.poonolil_Black : Colors.grey,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "SHOPPING BAG",
            style: TextStyle(
              fontFamily: "MadeOuterSans",
              fontSize: 9.sp,
              fontWeight: FontWeight.w300,
              color: value == 0 ? AppColors.poonolil_Black : Colors.grey,
              letterSpacing: 0.06,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 32.w,
      ),
      Column(
        children: [
          Image.asset(
            "assets/icons/delivery.png",
            height: 22.h,
            width: 22.h,
            fit: BoxFit.fill,
            color: value == 1 ? AppColors.poonolil_Black : Colors.grey,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "DELIVERY",
            style: TextStyle(
              fontFamily: "MadeOuterSans",
              fontSize: 9.sp,
              fontWeight: FontWeight.w300,
              color: value == 1 ? AppColors.poonolil_Black : Colors.grey,
              letterSpacing: 0.06,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 32.w,
      ),
      Column(
        children: [
          Image.asset(
            "assets/icons/payment.png",
            height: 22.h,
            width: 22.h,
            fit: BoxFit.fill,
            color: value == 2 ? AppColors.poonolil_Black : Colors.grey,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "PAYMENT",
            style: TextStyle(
              fontFamily: "MadeOuterSans",
              fontSize: 9.sp,
              fontWeight: FontWeight.w300,
              color: value == 2 ? AppColors.poonolil_Black : Colors.grey,
              letterSpacing: 0.06,
            ),
          ),
        ],
      ),
    ],
  );
}
