import 'package:flutter/material.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/views/bottom_nav/shop/nav_shop.dart';
import 'package:poonolil/ui/widgets/app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/ui/widgets/gradient_background.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  bool _listView = true;
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  list() {
    setState(() {
      _listView = true;
      Navigator.pop(context);
    });
  }

  grid() {
    setState(() {
      _listView = false;
      Navigator.pop(context);
    });
  }

  itemsSortinglDialog(context) {
    return showDialog(
      context: context,
      builder: (builder) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.all(
                Radius.circular(15.r),
              ),
            ),
            child: Container(
              height: 250.h,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(
                  Radius.circular(15.r),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, top: 20.h),
                child: Column(
                  children: [
                    Text(
                      "Sort Items",
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: AppColors.poonolil_primary,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Material(
                      child: ListTile(
                        dense: true,
                        title: Text("List Style"),
                        onTap: () {
                          list();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Material(
                      child: ListTile(
                        dense: true,
                        title: Text("Grid Style"),
                        onTap: () {
                          grid();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }

  var scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Wishlist", context),
      body: bodyBackgroundImg(
        NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    totalItemsAndSort(
                      () => itemsSortinglDialog(context),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: _listView == true ? listViewStyle() : gridViewStyle(),
        ),
      ),
    );
  }
}

Widget totalItemsAndSort(sortItemsDialog) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 589.h,
            width: ScreenUtil().screenWidth,
            color: Colors.black,
            child: Image.asset(
              "assets/images/eight.png",
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WISHLIST",
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
                      style: TextStyle(
                        fontFamily: "MadeOuterSans",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w200,
                        color: Color(0xFFFAF6F1),
                        letterSpacing: 0.06,
                      ),
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
      Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "550 Results",
              style: TextStyle(
                fontFamily: "MadeOuterSans",
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.poonolil_Black,
                letterSpacing: 0.06,
              ),
            ),
            InkWell(
              onTap: sortItemsDialog,
              child: Row(
                children: [
                  Icon(
                    Icons.filter_list_outlined,
                    size: 18.w,
                    color: AppColors.poonolil_primary,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Sort",
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
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        child: Divider(),
      ),
    ],
  );
}
