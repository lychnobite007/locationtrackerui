import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keepmyfamilysafe/screens/bottom_navigation.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StartYourFreeTrialScreen extends StatefulWidget {
  const StartYourFreeTrialScreen({Key? key}) : super(key: key);

  @override
  State<StartYourFreeTrialScreen> createState() =>
      _StartYourFreeTrialScreenState();
}

class _StartYourFreeTrialScreenState extends State<StartYourFreeTrialScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: Adaptive.w(100),
            height: Adaptive.h(96),
            child: Stack(
              children: [
                Image.network(
                    'https://snazzy-maps-cdn.azureedge.net/assets/1243-xxxxxxxxxxx.png?v=20220106114208',
                    height: Adaptive.h(96),
                    width: Adaptive.w(100),
                    fit: BoxFit.fill),
                Container(
                  height: Adaptive.h(96),
                  width: Adaptive.w(100),
                  color: Colors.black.withOpacity(0.6),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.sp),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 25.sp,
                          ),
                          Text(
                            'locator',
                            style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.multiply,
                                color: Colors.white,
                                size: 22.sp,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 25.sp,
                      ),
                      Text("Whom's location do".toUpperCase(),
                          style: textStyle),
                      Text(
                        "do you want to find?".toUpperCase(),
                        style: textStyle,
                      ),
                      SizedBox(
                        height: 35.sp,
                      ),
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/cloudyml-app.appspot.com/o/TestingImage%2Fkey.png?alt=media&token=74f66514-9c0f-483a-9c25-5afb88f6acdc',
                        height: Adaptive.h(30),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: Adaptive.h(35),
                    width: Adaptive.w(100),
                    color: Colors.black,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.sp,
                              bottom: 10.sp,
                              right: 10.sp,
                              top: 5.sp),
                          child: Text(
                            'Instant Location Tracking - Current Location Information and Detailed Reports',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontSize: 20.sp),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '3 DAYS FREE TRIAL, WEEKLY  9.99\$',
                              style: TextStyle(fontSize: 17.sp),
                            )),
                        SizedBox(
                          height: 15.sp,
                        ),
                        SizedBox(
                          height: 28.sp,
                          width: Adaptive.w(75),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BottomNavigation()));
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.sp))),
                              child: Text(
                                'Start Free Trial'.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 17.sp, color: Colors.white),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.5.sp),
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Terms of Use',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.5.sp),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Restore',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.5.sp),
                                ))
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
      ),
    );
  }

  TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 18.sp, color: Colors.white);
}
