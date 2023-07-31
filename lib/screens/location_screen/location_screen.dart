import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../constants/alert_dialog.dart';
import '../notification_screen/notification_screen.dart';
import '../profile_screen/first_profile_screen.dart';
import '../profile_screen/main_profile_screen.dart';
import 'package:country_list_pick/country_list_pick.dart';

import 'alert_screen.dart';
import 'location_permission_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool isExpanded = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 22.sp,
        shadowColor: Colors.white,
        title: Text(
          'locator',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FirstProfileScreen()));
              },
              splashRadius: 20.sp,
              icon: Icon(
                Icons.person,
                color: Colors.black,
                size: 22.sp,
              )),
        ],
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationScreen()));
            },
            icon: Icon(
              Icons.notifications_sharp,
              color: Colors.black,
              size: 22.sp,
            )),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: Adaptive.w(100),
              height: Adaptive.h(83),
              color: Colors.black,
            ),
            Positioned(
              top: 60.sp,
              right: 10,
              child: Column(
                children: [
                  Container(
                    height: 32.sp,
                    width: 32.sp,
                    child: FloatingActionButton(
                        backgroundColor: Colors.red,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AlertScreen()));
                        },
                        child: Icon(
                          Icons.doorbell_rounded,
                          color: Colors.white,
                          size: 21.sp,
                        )),
                  ),
                  SizedBox(height: 15.sp),
                  Container(
                    height: 32.sp,
                    width: 32.sp,
                    child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Icon(Icons.photo,
                            size: 21.sp, color: Colors.black)),
                  )
                ],
              ),
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: isExpanded ? Adaptive.h(40) : Adaptive.h(30),
              width: Adaptive.w(100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.sp),
                  topLeft: Radius.circular(25.sp),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10.sp, right: 10.sp, top: 20.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 28.sp,
                          width: Adaptive.w(46),
                          child: ElevatedButton(
                              onPressed: () {
                                QuickDialog().addContactDialog(context);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.white.withOpacity(0.7),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.sp))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.assistant_direction_outlined,
                                    color: Colors.black26,
                                    size: 20.sp,
                                  ),
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  Text(
                                    'Land',
                                    style: TextStyle(
                                        color: Colors.black26, fontSize: 18.sp),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 28.sp,
                          width: Adaptive.w(46),
                          child: ElevatedButton(
                              onPressed: () {
                                QuickDialog().transactionSuccessful(context);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.sp))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.assistant_direction_outlined,
                                    color: Colors.white,
                                    size: 20.sp,
                                  ),
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  Text(
                                    'Satelite',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.sp),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            isExpanded
                ? Container(
                    height: Adaptive.h(30),
                    width: Adaptive.w(100),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 5.sp,
                          offset: Offset(0, 1),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.sp),
                          topLeft: Radius.circular(25.sp)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 10.sp, right: 10.sp, top: 20.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.sp),
                                child: Text('Phone Number'),
                              )),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Container(
                            height: 30.sp,
                            width: Adaptive.w(90),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.circular(15.sp),
                            ),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    CountryListPick(
                                      appBar: AppBar(
                                        backgroundColor: Colors.blue,
                                        title: Text(
                                          'Pick a country',
                                        ),
                                      ),
                                      theme: CountryTheme(
                                        isShowFlag: true,
                                        isShowTitle: false,
                                        isShowCode: true,
                                        isDownIcon: false,
                                        showEnglishName: false,
                                        labelColor: Colors.grey,
                                      ),
                                      useSafeArea: true,
                                      initialSelection: '+91',
                                      useUiOverlay: true,
                                      onChanged: (code) {},
                                    ),
                                    SizedBox(
                                        height: 12.5.sp,
                                        child: VerticalDivider(
                                          color: Colors.grey,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 25.sp,
                                  width: Adaptive.w(50),
                                  child: TextFormField(
                                    style: TextStyle(
                                        fontSize: 18.sp, color: Colors.black),
                                    autofillHints: [
                                      AutofillHints.telephoneNumber
                                    ],
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Phone Number',
                                      hintStyle: TextStyle(
                                          fontSize: 17.sp,
                                          color: Colors.black38),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 22.sp,
                                    width: 22.sp,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(10.sp)),
                                    child: Center(
                                        child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 16.sp,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Text('Enter the number of person whose',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15.sp)),
                          Text('Location you want to find',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15.sp)),
                          SizedBox(
                            height: 10.sp,
                          ),
                          SizedBox(
                            height: 30.sp,
                            width: Adaptive.w(90),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.sp))),
                                child: Text(
                                  'Show your location',
                                  style: TextStyle(fontSize: 17.sp),
                                )),
                          )
                        ],
                      ),
                    ),
                  )
                : Container(
                    height: Adaptive.h(30),
                    width: Adaptive.w(100),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 5.sp,
                          offset: Offset(0, 1),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.sp),
                          topLeft: Radius.circular(25.sp)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 10.sp, right: 10.sp, top: 30.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 30.sp,
                            width: Adaptive.w(90),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 25.sp,
                                ),
                                SizedBox(
                                  width: 15.sp,
                                ),
                                SizedBox(
                                  width: Adaptive.w(60),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Leslie Alexander',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.sp),
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          textWithIcon(
                                              CupertinoIcons.car_detailed,
                                              '8min'),
                                          textWithIcon(
                                              Icons.run_circle_outlined,
                                              '32km'),
                                          textWithIcon(
                                              CupertinoIcons.battery_25_percent,
                                              '50%'),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.sp,
                          ),
                          SizedBox(
                            height: 30.sp,
                            width: Adaptive.w(90),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.sp))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Send Message',
                                      style: TextStyle(fontSize: 18.sp),
                                    ),
                                    SizedBox(
                                      width: 10.sp,
                                    ),
                                    Icon(Icons.arrow_circle_right_rounded,
                                        size: 20.sp),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }

  Widget textWithIcon(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        SizedBox(
          width: 10.sp,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
