import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../notification_screen/notification_screen.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({Key? key}) : super(key: key);

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 22.sp,
            )),
        // toolbarHeight: 30.sp,
        title: Text(
          'Select Location',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.normal),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.sp),
          child: Padding(
            padding: EdgeInsets.only(left: 15.sp, bottom: 15.sp, right: 15.sp),
            child: SizedBox(
              height: 26.sp,
              width: Adaptive.w(100),
              child: Center(
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.start,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10.sp),
                      prefixIcon: Icon(CupertinoIcons.circle_fill,
                          color: Colors.black.withOpacity(0.1)),
                      hintText: 'Search for a neighbourhood, street',
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(25.sp)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.1)),
                          borderRadius: BorderRadius.circular(25.sp)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.1)),
                          borderRadius: BorderRadius.circular(25.sp)),
                      filled: true),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        height: 40.sp,
        width: Adaptive.w(100),
        color: Colors.redAccent,
        child: Container(
          height: 40.sp,
          width: Adaptive.w(100),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.sp),
                  topLeft: Radius.circular(20.sp))),
          child: Column(
            children: [
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 28.sp,
                width: Adaptive.w(85),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.sp))),
                  onPressed: () {},
                  child: Text('Use This Location'),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.redAccent,
        height: Adaptive.h(100),
        width: Adaptive.w(100),
      ),
    );
  }
}
