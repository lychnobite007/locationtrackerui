import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LocationPermissionScreen extends StatefulWidget {
  const LocationPermissionScreen({Key? key}) : super(key: key);

  @override
  State<LocationPermissionScreen> createState() =>
      _LocationPermissionScreenState();
}

class _LocationPermissionScreenState extends State<LocationPermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Location Permission',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.normal),
        ),
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(
        //       Icons.arrow_back,
        //       color: Colors.black,
        //       size: 20.sp,
        //     )),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Container(
              height: Adaptive.h(30),
              width: Adaptive.w(100),
              child: Placeholder(), //add an image here
            ),
            SizedBox(
              height: 20.sp,
            ),
            Text(
              'Allow',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Text(
              'You should allow location information to',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            Text(
              'use the app better',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 25.sp,
            ),
            SizedBox(
              height: 30.sp,
              width: Adaptive.w(75),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationPermissionScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.sp))),
                  child: Text(
                    'Show',
                    style: TextStyle(fontSize: 17.sp),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
