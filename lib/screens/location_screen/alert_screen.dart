import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 0, 0, 10),
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.sp,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  width: Adaptive.w(100),
                  height: Adaptive.h(60),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 0.4)),
                  child: Center(
                    child: Container(
                      width: Adaptive.w(80),
                      height: Adaptive.h(40),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 0.4)),
                      child: Center(
                        child: Container(
                          width: Adaptive.w(50),
                          height: Adaptive.h(25),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 0, 0, 1),
                                    Color.fromRGBO(255, 99, 71, 1)
                                        .withOpacity(0.95)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter),
                              border:
                                  Border.all(color: Colors.white, width: 0.4)),
                          child: Center(
                            child: Icon(Icons.rice_bowl,
                                color: Colors.white, size: 35.sp),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            Text(
              'Push the Button!',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.8.sp,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12.sp,
            ),
            Text(
              'If there is an emergency, press the button and',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.8.sp,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 5.sp,
            ),
            Text(
              'notify your friends!',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.8.sp,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20.sp,
            ),
            CircleAvatar(
              radius: 22.sp,
              backgroundColor: Colors.white,
              child: Icon(CupertinoIcons.multiply, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
