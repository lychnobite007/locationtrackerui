import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keepmyfamilysafe/screens/profile_screen/settings_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 28, 55, 15),
      body: SingleChildScrollView(
        child: Container(
          height: Adaptive.h(100),
          width: Adaptive.w(100),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 30.sp,
                child: Text(
                  'Verify Your information',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
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
                child: Container(
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
                    CupertinoIcons.phone_solid,
                    // Icons.person_4,
                    color: Color.fromRGBO(7, 28, 55, 15),
                    size: 30.sp,
                  ),
                ),
              ),
              Positioned(
                bottom: 0.sp,
                child: Container(
                  width: Adaptive.w(100),
                  height: Adaptive.h(60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15.sp,
                      ),
                      Text(
                        isVerified ? 'Verification Code Sent' : 'Confirming...',
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 25.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Pinput(
                              onChanged: (value) => otpText = value,
                              defaultPinTheme: PinTheme(
                                width: 30.sp,
                                height: 32.sp,
                                textStyle: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(7, 28, 55, 15),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.sp),
                                    border: Border.all(
                                        width: 1.5,
                                        color: Colors.black.withOpacity(
                                          0.1,
                                        ))
                                    // color: Color.fromARGB(255, 226, 226, 226),
                                    ),
                              ),
                              length: 6,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                          height: 30.sp,
                          width: Adaptive.w(90),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isVerified = !isVerified;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      isVerified ? Colors.blue : Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.sp))),
                              child: Text(
                                'Verify',
                                style: TextStyle(fontSize: 17.sp),
                              ))),
                      SizedBox(
                        height: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isVerified = true;

  String otpText = '';
  final defaultPinTheme = PinTheme(
    width: 30.sp,
    height: 20.sp,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 226, 226, 226),
    ),
  );

  Widget darkRoundedPinPut() {
    return Container(
      child: Pinput(
        onChanged: (value) => otpText = value,
        defaultPinTheme: defaultPinTheme.copyDecorationWith(
          borderRadius: BorderRadius.circular(8),
        ),
        length: 6,
      ),
    );
  }
}
