import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keepmyfamilysafe/screens/profile_screen/main_profile_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:country_list_pick/country_list_pick.dart';

import '../../constants/alert_dialog.dart';
import '../location_screen/location_permission_screen.dart';
import '../otp_verfication/otp_verification_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Edit Your Information',
          style: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.bold),
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: Adaptive.w(100),
          height: Adaptive.h(89),
          child: Column(
            children: [
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 42.5.sp,
                width: 42.5.sp,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 8.sp,
                          offset: Offset(1, 1))
                    ]),
                child: Icon(
                  CupertinoIcons.person_solid,
                  // Icons.person_4,
                  color: Colors.black12,
                  size: 30.sp,
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Text('username',
                  style: TextStyle(color: Colors.black, fontSize: 16.sp)),
              SizedBox(
                height: 5.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.phone_solid,
                    // Icons.person_4,
                    color: Colors.black38,
                    size: 16.sp,
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text('+917623969747',
                      style: TextStyle(color: Colors.black38, fontSize: 16.sp)),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.sp, right: 17.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.sp,
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
                              autofillHints: [AutofillHints.telephoneNumber],
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
                    Container(
                      width: Adaptive.w(100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('if you want to change your number, a',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.25),
                                  fontSize: 16.sp)),
                          Text('confirmation code will be sent to your new',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.25),
                                  fontSize: 16.sp)),
                          Text('number',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.25),
                                  fontSize: 16.sp)),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        OtpVerificationScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.sp))),
                          child: Text(
                            'Update',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.sp),
                          )),
                    ),
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
