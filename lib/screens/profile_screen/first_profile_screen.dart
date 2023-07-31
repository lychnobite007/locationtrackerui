import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keepmyfamilysafe/screens/profile_screen/main_profile_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:country_list_pick/country_list_pick.dart';

import '../../constants/alert_dialog.dart';

class FirstProfileScreen extends StatefulWidget {
  const FirstProfileScreen({Key? key}) : super(key: key);

  @override
  State<FirstProfileScreen> createState() => _FirstProfileScreenState();
}

class _FirstProfileScreenState extends State<FirstProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Verify Your Information',
          style: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.bold),
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
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.normal),
              )),
          SizedBox(
            width: 10.sp,
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Adaptive.w(100),
          height: Adaptive.h(89.5),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  height: Adaptive.h(70),
                  width: Adaptive.w(100),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22.sp),
                          topRight: Radius.circular(22.sp))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 17.sp, right: 17.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40.sp,
                        ),
                        Text('Name Surname',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.25),
                                fontSize: 16.sp)),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Container(
                          height: 30.sp,
                          width: Adaptive.w(100),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(15.sp),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  Icon(Icons.person,
                                      color: Colors.black, size: 23.sp),
                                  SizedBox(
                                      height: 15.sp,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 25.sp,
                                width: Adaptive.w(50),
                                child: TextFormField(
                                  style: TextStyle(
                                      fontSize: 18.sp, color: Colors.black),
                                  autofillHints: [AutofillHints.name],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter Your Name',
                                    hintStyle: TextStyle(
                                        fontSize: 17.sp, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text('Phone Number',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.25),
                                fontSize: 16.sp)),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Container(
                          height: 30.sp,
                          width: Adaptive.w(100),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(15.sp),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  CountryListPick(
                                    appBar: AppBar(
                                      backgroundColor: Colors.blue,
                                      title: Text(
                                        'Pick a country',
                                      ),
                                    ),
                                    theme: CountryTheme(
                                      isShowFlag: true,
                                      isShowTitle: false,
                                      isShowCode: true,
                                      isDownIcon: false,
                                      showEnglishName: false,
                                      labelColor: Colors.grey,
                                    ),
                                    useSafeArea: true,
                                    initialSelection: '+91',
                                    useUiOverlay: true,
                                    onChanged: (code) {},
                                  ),
                                  SizedBox(
                                      height: 12.5.sp,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 25.sp,
                                width: Adaptive.w(50),
                                child: TextFormField(
                                  style: TextStyle(
                                      fontSize: 18.sp, color: Colors.black),
                                  autofillHints: [
                                    AutofillHints.telephoneNumber
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Phone Number',
                                    hintStyle: TextStyle(
                                        fontSize: 17.sp, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
                        SizedBox(
                          height: 30.sp,
                          width: Adaptive.w(90),
                          child: ElevatedButton(
                              onPressed: () {
                                QuickDialog().userNotFoundDialog(context);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.sp))),
                              child: Text(
                                'Save',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.sp),
                              )),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Container(
                          width: Adaptive.w(100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.warning_outlined,
                                color: Colors.black.withOpacity(0.3),
                              ),
                              SizedBox(
                                height: 15.sp,
                              ),
                              Text('A verification code will be sent to',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.25),
                                      fontSize: 16.sp)),
                              Text('Your phone number',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.25),
                                      fontSize: 16.sp)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 43.sp,
                left: 48.sp,
                right: 49.sp,
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
            ],
          ),
        ),
      ),
    );
  }
}
