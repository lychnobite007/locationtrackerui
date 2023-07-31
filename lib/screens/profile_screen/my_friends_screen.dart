import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyFriendsScreen extends StatelessWidget {
  const MyFriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'My Friends',
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
      body: Center(
        child: Text("You don't have any friends yet"),
      ),
    );
  }
}
