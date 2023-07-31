import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keepmyfamilysafe/screens/profile_screen/settings_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'edit_profile_screen.dart';
import 'my_friends_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        child: Stack(
          children: [
            Positioned(
              left: 50.sp,
              top: 30.sp,
              child: Text(
                'My Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 18.sp),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: Adaptive.h(70),
                width: Adaptive.w(100),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22.sp),
                        topRight: Radius.circular(22.sp))),
              ),
            ),
            Positioned(
              top: Adaptive.h(24),
              right: Adaptive.w(35),
              child: Stack(
                children: [
                  Container(
                    height: 42.5.sp,
                    width: 42.5.sp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 20.sp,
                              offset: Offset(1, 1))
                        ]),
                    child: Icon(
                      CupertinoIcons.person_solid,
                      // Icons.person_4,
                      color: Colors.black12,
                      size: 30.sp,
                    ),
                  ),
                  Positioned(
                    bottom: 5.sp,
                    right: 0.sp,
                    child: CircleAvatar(
                      radius: 17.sp,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 22.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 50.sp,
              child: Container(
                width: Adaptive.w(100),
                height: Adaptive.h(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfileScreen()));
                      },
                      child: Container(
                        height: 30.sp,
                        width: Adaptive.w(90),
                        padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.sp),
                            color: Colors.black.withOpacity(0.02)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.warning, size: 22.sp, color: Colors.red),
                            SizedBox(
                              height: 20.sp,
                              child: VerticalDivider(
                                color: Colors.black38,
                              ),
                            ),
                            Text('Save Your Information',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.sp)),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 22.sp,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyFriendsScreen()));
                      },
                      child: menuTiles(
                        CupertinoIcons.person_2_alt,
                        'My Friends',
                      ),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingsScreen()));
                      },
                      child: menuTiles(
                        Icons.candlestick_chart_outlined,
                        'Settings',
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
      height: 30.sp,
      width: Adaptive.w(90),
      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.sp),
          color: Colors.black.withOpacity(0.02)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 22.sp),
          SizedBox(
            height: 20.sp,
            child: VerticalDivider(
              color: Colors.black38,
            ),
          ),
          Text(text, style: TextStyle(color: Colors.black, fontSize: 18.sp)),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 22.sp,
          )
        ],
      ),
    );
  }
}
