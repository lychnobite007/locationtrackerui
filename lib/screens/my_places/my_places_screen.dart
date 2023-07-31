import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keepmyfamilysafe/constants/alert_dialog.dart';
import 'package:keepmyfamilysafe/screens/my_places/add_new_address.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyPlacesScreen extends StatefulWidget {
  const MyPlacesScreen({Key? key}) : super(key: key);

  @override
  State<MyPlacesScreen> createState() => _MyPlacesScreenState();
}

class _MyPlacesScreenState extends State<MyPlacesScreen> {
  bool isTherePlace = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'My Places',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white38,
      body: SingleChildScrollView(
        child: Container(
          height: Adaptive.h(80),
          width: Adaptive.w(100),
          // color: Colors.black,
          child: isTherePlace
              ? Column(
                  children: [
                    Column(
                      children: List.generate(1, (index) {
                        return Container(
                          height: 35.sp,
                          margin: EdgeInsets.all(12.sp),
                          padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                          width: Adaptive.w(100),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.sp)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue.withOpacity(0.4),
                                radius: 21.sp,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 18.sp,
                                  child: Center(
                                    child: Icon(
                                      Icons.home,
                                      size: 23.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.sp,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                        fontSize: 16.sp, color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Text(
                                    'Edit address information',
                                    style: TextStyle(
                                        fontSize: 14.sp, color: Colors.black38),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  QuickDialog().userNotFoundDialog(context);
                                  // setState(() {
                                  //   isTherePlace = false;
                                  // });
                                },
                                icon: Icon(
                                  Icons.edit,
                                  size: 23.sp,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 20.sp,
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddNewAddressScreen()));
                      },
                      child: Container(
                        height: 30.sp,
                        margin: EdgeInsets.all(12.sp),
                        padding: EdgeInsets.only(left: 13.sp, right: 10.sp),
                        width: Adaptive.w(100),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.sp)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 22.sp,
                              width: 22.sp,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 21.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 27.sp,
                            ),
                            Text(
                              'Add new address',
                              style: TextStyle(
                                  fontSize: 16.sp, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              // Screen when there is no Address
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 45.sp,
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 17.sp,
                        child: Transform.rotate(
                          angle: 90.sp,
                          child: Icon(
                            color: Colors.white,
                            Icons.power_settings_new_outlined,
                            size: 22.sp,
                          ),
                        )),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text('There is no registered place yet!'),
                    SizedBox(
                      height: 25.sp,
                    ),
                    SizedBox(
                      height: 30.sp,
                      width: Adaptive.w(90),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            isTherePlace = true;
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.sp),
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Add Address',
                                style: TextStyle(fontSize: 17.sp),
                              ),
                              SizedBox(
                                width: 15.sp,
                              ),
                              Container(
                                  height: 19.sp,
                                  width: 19.sp,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      size: 18.sp,
                                      Icons.add,
                                      color: Colors.blue,
                                    ),
                                  )),
                            ],
                          )),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
