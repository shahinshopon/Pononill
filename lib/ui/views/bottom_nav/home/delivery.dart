import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poonolil/const/app_colors.dart';
import 'package:poonolil/ui/styles/styles.dart';
import 'package:poonolil/ui/views/bottom_nav/profile/address.dart';
import 'package:poonolil/ui/widgets/custom_button.dart';

class Delivery extends StatelessWidget {
  Delivery({Key? key}) : super(key: key);

  List _homeNames = [
    "Angamaly home",
    "Kalady Home",
  ];

  List _locationNames = [
    "K Homes, SNDP Junction, Angamaly PO,  683572, India",
    "Thazhuttekudyil House, Mopper Road, Kalady PO, Kalady, 683574",
  ];

  bool home = true;
  bool work = false;
  bool checkBoxValue = false;

  addNewAddressDialog(context) {
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
                color: Color(0xFFFFFFFF).withOpacity(0.8),
              ),
              height: 729.h,
              child: Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 35.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add New Address",
                        style: TextStyle(
                          fontFamily: "Fligen",
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.poonolil_primary,
                          letterSpacing: 0.06,
                        ),
                      ),
                      Divider(),
                      addressFormField(TextInputType.name, "CUSTOMER NAME"),
                      addressFormField(TextInputType.number, "PHONE NUMBER"),
                      Styles.transparentDivider(),
                      addressFormField(TextInputType.text, "ADDRESS"),
                      addressFormField(TextInputType.text, "STREET ADDRESS"),
                      Row(
                        children: [
                          Expanded(
                            child: addressFormField(
                                TextInputType.text, "DISTRICT"),
                          ),
                          SizedBox(
                            width: 8.h,
                          ),
                          Expanded(
                            child:
                                addressFormField(TextInputType.text, "STATE"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: addressFormField(
                                TextInputType.number, "PIN CODE"),
                          ),
                          SizedBox(
                            width: 8.h,
                          ),
                          Expanded(
                            child:
                                addressFormField(TextInputType.text, "COUNTRY"),
                          ),
                        ],
                      ),
                      Text(
                        "This Address Is My",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w200,
                          color: AppColors.poonolil_Black,
                          letterSpacing: 0.06,
                        ),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 24.39.h,
                            width: 54.w,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  home = true;
                                  work = false;
                                });
                              },
                              child: Text(
                                "Home",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "MadeOuterSans",
                                    color: home == true
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: home == true
                                    ? Colors.deepOrange
                                    : Color(0xFFDBB98F),
                                padding: EdgeInsets.all(0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 24.39.h,
                            width: 54.w,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  work = true;
                                  home = false;
                                });
                              },
                              child: Text(
                                "Work",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "MadeOuterSans",
                                    color: work == true
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: work == true
                                    ? Colors.deepOrange
                                    : Color(0xFFDBB98F),
                                padding: EdgeInsets.all(0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checkBoxValue,
                            onChanged: (value) {
                              setState(
                                () {
                                  checkBoxValue = value!;
                                },
                              );
                            },
                          ),
                          Text(
                            "Make This My Default Address",
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
                      Styles.transparentDivider(),
                      addToCartButtonTow(
                        "ADD ADDRESS",
                        () {},
                      ),
                      Styles.transparentDivider(),
                      InkWell(
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
                        onTap: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        child: Column(
          children: [
            Expanded(
            
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _homeNames.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: ListTile(
                            title: Text(
                              _homeNames[index],
                              style: TextStyle(
                                fontFamily: "Fligen",
                                fontSize: 18.sp,
                                color: AppColors.poonolil_Black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              _locationNames[index],
                              style: TextStyle(
                                fontFamily: "MadeOuterSans",
                                fontSize: 12.sp,
                                color: AppColors.poonolil_Black,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/icons/delete.png",
                                width: 18.w,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  },
                ),
              ),
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
                  onTap: () => addNewAddressDialog(context),
                  splashColor: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ADD NEW ADDRESS",
                        style: TextStyle(
                          fontFamily: "MadeOuterSans",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w200,
                          color: AppColors.poonolil_primary,
                          letterSpacing: 0.06,
                        ),
                      ),
                      Image.asset(
                        "assets/icons/map.png",
                        width: 22.w,
                        height: 22.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(child: Container(),),
            addToCartButton(
              "5567",
              "GO TO PAYMENTS",
              () {},
            ),
            SizedBox(
              height: 23.h,
            ),
          ],
        ),
      ),
    );
  }
}
