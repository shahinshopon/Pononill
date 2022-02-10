import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/styles/styles.dart';
import 'package:poonolil/ui/widgets/custom_button.dart';

class NavShop extends StatefulWidget {
  const NavShop({Key? key}) : super(key: key);

  @override
  State<NavShop> createState() => _NavShopState();
}

class _NavShopState extends State<NavShop> {
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

  filterlDialog(context) {
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
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(
                  Radius.circular(15.r),
                ),
              ),
              height: 572.h,
              child: Padding(
                padding: EdgeInsets.only(left: 32.w, right: 32.w, top: 35.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Filter Results",
                      style: TextStyle(
                        fontFamily: "Fligen",
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.poonolil_primary,
                        letterSpacing: 0.06,
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Filter Results",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w200,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                        Text(
                          "XL",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                      ],
                    ),
                    Styles.transparentDivider(),
                    Text(
                      "Colour",
                      style: TextStyle(
                        fontFamily: "MadeOuterSans",
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w200,
                        color: AppColors.poonolil_Black,
                        letterSpacing: 0.06,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 5.r,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Blue",
                              style: TextStyle(
                                fontFamily: "MadeOuterSans",
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.poonolil_Black,
                                letterSpacing: 0.06,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 5.r,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Red",
                              style: TextStyle(
                                fontFamily: "MadeOuterSans",
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.poonolil_Black,
                                letterSpacing: 0.06,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 5.r,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Green",
                              style: TextStyle(
                                fontFamily: "MadeOuterSans",
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.poonolil_Black,
                                letterSpacing: 0.06,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 5.r,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Black",
                              style: TextStyle(
                                fontFamily: "MadeOuterSans",
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.poonolil_Black,
                                letterSpacing: 0.06,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Styles.transparentDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w200,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                        Text(
                          "6000",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                      ],
                    ),
                    RangeSlider(
                      values: _currentRangeValues,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    ),
                    Styles.transparentDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Material",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w200,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                        Text(
                          "Kanjipuran",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                      ],
                    ),
                    Styles.transparentDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Type",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w200,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                        Text(
                          "Saree",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                      ],
                    ),
                    Styles.transparentDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Style",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w200,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                        Text(
                          "Traditional",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                      ],
                    ),
                    Styles.transparentDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Design",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w200,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                        Text(
                          "Urban Traditional",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
                      ],
                    ),
                    Styles.transparentDivider(),
                    addToCartButtonTow(
                      "APPLY FILTERS",
                      () => Navigator.pop(context),
                    ),
                    Styles.transparentDivider(),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontFamily: "MadeOuterSans",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w200,
                            color: AppColors.poonolil_Black,
                            letterSpacing: 0.06,
                          ),
                        ),
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
      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  shop(
                    () => filterlDialog(context),
                    () => itemsSortinglDialog(context),
                  ),
                ],
              ),
            ),
          ];
        },
        body: _listView == true ? listViewStyle() : gridViewStyle(),
      ),
    );
  }
}

Widget listViewStyle() {
  return ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: 10,
    itemBuilder: (_, index) {
      return listItem();
    },
  );
}

Widget gridViewStyle() {
  return Padding(
    padding: EdgeInsets.only(left: 10.w, right: 10.w),
    child: GridView.builder(
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.42,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/three.png",
                    height: 274.h,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    bottom: 11.h,
                    right: 14.w,
                    child: SizedBox(
                      height: 38.h,
                      width: 38.w,
                      child: FloatingActionButton(
                        backgroundColor: Color(0xFF322F2D),
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
              SizedBox(
                height: 11.h,
              ),
              Text(
                "Black Satin Saree",
                style: TextStyle(
                  fontFamily: "Ravine",
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.poonolil_Black,
                  letterSpacing: 0.06,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                "Tellus vel lobortis neque, urna, quisque tempor",
                style: TextStyle(
                  fontFamily: "MadeOuterSans",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w200,
                  color: AppColors.poonolil_Black,
                  letterSpacing: 0.06,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "₹ 567",
                    style: TextStyle(
                      fontFamily: "MadeOuterSans",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors.poonolil_primary,
                      letterSpacing: 0.06,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "30% Off",
                    style: TextStyle(
                      fontFamily: "MadeOuterSans",
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors.poonolil_Black,
                      letterSpacing: 0.06,
                    ),
                  ),
                ],
              ),
              addToCartButtonTow(
                "ADD TO CART",
                () {},
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget shop(filterDialog, sortItemsDialog) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 589.h,
            width: ScreenUtil().screenWidth,
            color: Colors.black,
            child: Image.asset(
              "assets/images/two.png",
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
                      "SHOP",
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
      Container(
        child: Padding(
          padding: EdgeInsets.only(
            left: 32.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shop By Category",
                style: TextStyle(
                  fontFamily: "Fligen",
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.poonolil_Black,
                  letterSpacing: 0.06,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Container(
                height: 103.h,
                width: ScreenUtil().screenWidth,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 12.w),
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
      ),
      SizedBox(
        height: 34.h,
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
            Row(
              children: [
                InkWell(
                  onTap: filterDialog,
                  child: Row(
                    children: [
                      Icon(
                        Icons.tune_outlined,
                        size: 18.w,
                        color: AppColors.poonolil_primary,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Filter",
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
                SizedBox(
                  width: 30.w,
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

Widget listItem() {
  return Container(
    child: Padding(
      padding: EdgeInsets.only(left: 32.w, right: 32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/three.png",
                height: 301.h,
                width: ScreenUtil().screenWidth,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 11.h,
                right: 14.w,
                child: SizedBox(
                  height: 38.h,
                  width: 38.w,
                  child: FloatingActionButton(
                    backgroundColor: Color(0xFF6C5A51),
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
          SizedBox(
            height: 24.h,
          ),
          Text(
            "Black Satin Saree",
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
          SizedBox(
            height: 8.h,
          ),
          addToCartButton(
            "567",
            "ADD TO CART",
            () {},
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      color: AppColors.poonolil_Black.withOpacity(0.6),
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
                      color: AppColors.poonolil_Black.withOpacity(0.6),
                      letterSpacing: 0.06,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    ),
  );
}
