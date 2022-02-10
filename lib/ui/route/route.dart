import 'package:get/get.dart';
import 'package:poonolil/ui/views/auth/login_screen.dart';
import 'package:poonolil/ui/views/auth/otp_screen.dart';
import 'package:poonolil/ui/views/bottom_nav/bottom_nav_controller.dart';
import 'package:poonolil/ui/views/bottom_nav/home/product_screen.dart';
import 'package:poonolil/ui/views/bottom_nav/home/review_screen.dart';
import 'package:poonolil/ui/views/bottom_nav/home/cart_controller.dart';
import 'package:poonolil/ui/views/bottom_nav/profile/address.dart';
import 'package:poonolil/ui/views/bottom_nav/profile/orders.dart';
import 'package:poonolil/ui/views/bottom_nav/profile/wishlist.dart';

// Route Names
const String login = "/Login-Screen";
const String otp_screen = "/OTP-Screen";
const String bottom_nav_controller = "/Bottom-Nav-Controller-Screen";
const String users_address_screen = "/Users-AddressScreen";
const String orders_screen = "/Orders-Screen";
const String wishlist_screen = "/Wishlist-Screen";
const String product_screen = "/Product-Screen";
const String review_screen = "/Review-Screen";
const String cart_controller_screen = "/Cart-Controller-Screen";


// Control our page route flow
List<GetPage> getPages = [
  GetPage(
    name: login,
    page: () => LoginScreen(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: otp_screen,
    page: () => OtpScreen(),
  ),
  GetPage(
    name: bottom_nav_controller,
    page: () => BottomNavController(),
  ),
  GetPage(
    name: users_address_screen,
    page: () => AddressScreen(),
  ),
  GetPage(
    name: orders_screen,
    page: () => OrdersScreen(),
  ),
  GetPage(
    name: wishlist_screen,
    page: () => WishlistScreen(),
  ),
  GetPage(
    name: product_screen,
    page: () => ProductScreen(),
  ),
  GetPage(
    name: review_screen,
    page: () => ReviewScreen(),
  ),
    GetPage(
    name: cart_controller_screen,
    page: () => CartController(),
  ),
];
