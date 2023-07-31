import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

bool isTextFieldFocused = false;

class QuickDialog {
  void transactionSuccessful(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 5.sp,
          shadowColor: Colors.black,
          icon: Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.cancel,
              color: Colors.black,
            ),
          ),
          title: Center(
              child: Text('Transaction Successful',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold))),
          content: Container(
              height: 45.sp,
              width: Adaptive.w(100),
              child: Column(
                children: [
                  Text('You friend request has been',
                      style: TextStyle(color: Colors.black38, fontSize: 17.sp)),
                  Text('sent successfully.',
                      style: TextStyle(color: Colors.black38, fontSize: 17.sp)),
                  SizedBox(
                    height: 15.sp,
                  ),
                  SizedBox(
                    height: 30.sp,
                    width: Adaptive.w(65),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp))),
                      child: Text('Okay',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              )),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.sp)),
        );
      },
    );
  }

  void invalidPhoneNumber(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 5.sp,
          shadowColor: Colors.black,
          icon: Align(
            alignment: Alignment.topRight,
            child: Icon(
              CupertinoIcons.multiply,
              color: Colors.black,
              size: 20.sp,
            ),
          ),
          title: Center(
              child: Column(
            children: [
              Icon(
                Icons.warning,
                color: Colors.blue,
                size: 23.sp,
              ),
              SizedBox(
                height: 15.sp,
              ),
              Text('Invalid Phone Number',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
            ],
          )),
          content: Container(
              height: 45.sp,
              width: Adaptive.w(100),
              child: Column(
                children: [
                  Text('Please check the country code',
                      style: TextStyle(color: Colors.black38, fontSize: 17.sp)),
                  Text('and phone number.',
                      style: TextStyle(color: Colors.black38, fontSize: 17.sp)),
                  SizedBox(
                    height: 15.sp,
                  ),
                  SizedBox(
                    height: 30.sp,
                    width: Adaptive.w(65),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp))),
                      child: Text('Try again',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              )),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.sp)),
        );
      },
    );
  }

  void addContactDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 5.sp,
          shadowColor: Colors.black,
          title: Center(
              child: Column(
            children: [
              Icon(
                Icons.add_reaction_sharp,
                color: Colors.black,
                size: 23.sp,
              ),
              SizedBox(
                height: 15.sp,
              ),
              Text('Add Contact',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
            ],
          )),
          content: Container(
              height: 55.sp,
              width: Adaptive.w(100),
              child: Column(
                children: [
                  Text('You need to add the person',
                      style: TextStyle(color: Colors.black38, fontSize: 17.sp)),
                  Text('whose location you want to find',
                      style: TextStyle(color: Colors.black38, fontSize: 17.sp)),
                  SizedBox(
                    height: 15.sp,
                  ),
                  SizedBox(
                    height: 30.sp,
                    width: Adaptive.w(65),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp))),
                      child: Text('Add',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Container(
                    height: 30.sp,
                    width: Adaptive.w(65),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.sp),
                        border: Border.all(color: Colors.black38)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp))),
                      child: Text('Search Another Person',
                          style: TextStyle(
                              color: Colors.black38, fontSize: 18.sp)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              )),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.sp)),
        );
      },
    );
  }

  void locationConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 5.sp,
          shadowColor: Colors.black,
          title: Center(
              child: Column(
            children: [
              Text('Confirm Your Location',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
            ],
          )),
          content: Container(
              height: 63.sp,
              width: Adaptive.w(100),
              child: Column(
                children: [
                  descriptionText('No. on your location.'),
                  descriptionText('Information provided by'),
                  descriptionText('Google. if it is displayed'),
                  descriptionText('incorrectly, you can edit it on'),
                  descriptionText('the next page.'),
                  SizedBox(
                    height: 15.sp,
                  ),
                  SizedBox(
                    height: 30.sp,
                    width: Adaptive.w(70),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp))),
                      child: Text('Yes, My position is correct!',
                          style:
                              TextStyle(color: Colors.white, fontSize: 17.sp)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Container(
                    height: 30.sp,
                    width: Adaptive.w(70),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.sp),
                        border: Border.all(color: Colors.black38)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp))),
                      child: Text('No, I want to edit!',
                          style: TextStyle(
                              color: Colors.black38, fontSize: 17.sp)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              )),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.sp)),
        );
      },
    );
  }

  void userNotFoundDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 5.sp,
          shadowColor: Colors.black,
          title: Center(
              child: Column(
            children: [
              Icon(
                Icons.person,
                color: Colors.red,
                size: 23.sp,
              ),
              SizedBox(
                height: 15.sp,
              ),
              Text('Not Found',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
            ],
          )),
          content: Container(
              height: 55.sp,
              width: Adaptive.w(100),
              child: Column(
                children: [
                  descriptionText('The person you are looking for'),
                  descriptionText('was not found, send an invite now.'),
                  SizedBox(
                    height: 15.sp,
                  ),
                  SizedBox(
                    height: 30.sp,
                    width: Adaptive.w(65),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp))),
                      child: Text('Send invitation',
                          style:
                              TextStyle(color: Colors.white, fontSize: 17.sp)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Container(
                    height: 30.sp,
                    width: Adaptive.w(65),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.sp),
                        border: Border.all(color: Colors.black38)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp))),
                      child: Text('Search Another Person',
                          style: TextStyle(
                              color: Colors.black38, fontSize: 17.sp)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              )),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.sp)),
        );
      },
    );
  }

  Widget descriptionText(String text) {
    return Text(text, style: TextStyle(color: Colors.black38, fontSize: 17.sp));
  }
}
