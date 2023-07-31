import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../bottom_navigation.dart';
import '../introduction_slider/introduction_slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateToNextScreen() async {
    // Simulate a delay of 2 seconds using Future.delayed
    await Future.delayed(Duration(seconds: 2));

    // Navigate to the next screen using Navigator
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => IntroductionSliderScreen()),
    );
  }

  @override
  void initState() {
    navigateToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 28, 55, 5),
      body: Container(
        width: Adaptive.w(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.sp,
            ),
            Container(
                width: Adaptive.w(45),
                height: Adaptive.h(45),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.white,
                  //     spreadRadius: 5.sp,
                  //     blurRadius: 5.sp,
                  //     // offset: Offset(10.sp, 15.sp)
                  //   )
                  // ]
                ),
                child: Center(
                  child: Icon(
                    Icons.location_pin,
                    size: 50.sp,
                    color: Colors.white,
                  ),
                )),
            SizedBox(
              height: 50.sp,
            ),
            Text(
              'locator',
              style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
