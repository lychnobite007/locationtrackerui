import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'chatscreen/friends_chat.dart';
import 'location_screen/location_screen.dart';
import 'dart:math' as math;

import 'location_screen/search_location_screen.dart';
import 'my_places/my_places_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 1;

  final List<Widget> _screens = [
    MyPlacesScreen(),
    LocationScreen(),
    FriendsChat(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black26,
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        elevation: 0,
        enableFeedback: false,
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.photo_camera_front_outlined,
              size: 25.sp,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.circle,
              size: 0.sp,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble_2,
              size: 25.sp,
            ),
            label: '',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.rotate(
        angle: 25.sp * (math.pi / 180),
        child: Container(
          height: 32.sp,
          width: 32.sp,
          child: MediaQuery.of(context).viewInsets.bottom != 0
              ? Container()
              : FloatingActionButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        15.sp)), // Set the border radius for the rectangle
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SearchLocationScreen()));
                  },
                  child: Transform.rotate(
                    angle: -25.sp * (math.pi / 180),
                    child: Icon(
                      CupertinoIcons.location_solid,
                      size: 25.sp,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class FixedFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0,
      right: 16.0,
      child: FloatingActionButton(
        onPressed: () {
          // Perform action when FloatingActionButton is clicked
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
