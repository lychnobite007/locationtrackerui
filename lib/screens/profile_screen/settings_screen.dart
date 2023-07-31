import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 20.sp,
            )),
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 18.sp),
                child: Text(
                  'General Settings',
                  style:
                      TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            menuTiles(Icons.shield_moon, 'Privacy Policy'),
            SizedBox(
              height: 10.sp,
            ),
            menuTiles(Icons.library_books, 'EULA'),
            SizedBox(
              height: 10.sp,
            ),
            menuTiles(Icons.chat, 'Report a problem'),
            SizedBox(
              height: 10.sp,
            ),
            menuTiles(Icons.star_half, 'Rate'),
          ],
        ),
      ),
    );
  }

  Widget menuTiles(
    IconData icon,
    String text,
  ) {
    return Container(
      height: 32.sp,
      width: Adaptive.w(90),
      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.sp),
          color: Colors.black.withOpacity(0.02)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, size: 22.sp),
          SizedBox(width: 20.sp),
          Text(text, style: TextStyle(color: Colors.black87, fontSize: 18.sp)),
        ],
      ),
    );
  }
}
