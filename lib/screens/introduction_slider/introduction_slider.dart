import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../bottom_navigation.dart';
import '../start_your_free_trial/start_your_free_trial_screen.dart';

class IntroductionSliderScreen extends StatefulWidget {
  const IntroductionSliderScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionSliderScreen> createState() =>
      _IntroductionSliderScreenState();
}

class _IntroductionSliderScreenState extends State<IntroductionSliderScreen> {
  int currentIndex = 0;
  final _controller = PageController();
  List slides = [
    Container(
      height: Adaptive.h(60),
      width: Adaptive.w(100),
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Real Time Location',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19.sp),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You can track the location of the person',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp)),
                SizedBox(
                  height: 10.sp,
                ),
                Text('you want in real time',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp)),
              ],
            ),
          ),
          SizedBox(
            height: 30.sp,
            width: Adaptive.w(80),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.sp)),
                ),
                onPressed: () {},
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp),
                )),
          ),
          SizedBox(
            height: 15.sp,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
              ))
        ],
      ),
    ),
    Container(
      height: Adaptive.h(60),
      width: Adaptive.w(100),
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Real Time Location',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19.sp),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You can track the location of the person',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp)),
                SizedBox(
                  height: 10.sp,
                ),
                Text('you want in real time',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp)),
              ],
            ),
          ),
          SizedBox(
            height: 30.sp,
            width: Adaptive.w(80),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.sp)),
                ),
                onPressed: () {},
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp),
                )),
          ),
          SizedBox(
            height: 15.sp,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
              ))
        ],
      ),
    ),
    Container(
      height: Adaptive.h(60),
      width: Adaptive.w(100),
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Real Time Location',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19.sp),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You can track the location of the person',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp)),
                SizedBox(
                  height: 10.sp,
                ),
                Text('you want in real time',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp)),
              ],
            ),
          ),
          SizedBox(
            height: 30.sp,
            width: Adaptive.w(80),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.sp)),
                ),
                onPressed: () {},
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp),
                )),
          ),
          SizedBox(
            height: 15.sp,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
              ))
        ],
      ),
    )
  ];

  List images = [
    'https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhdmVsfGVufDB8fDB8fHww&w=1000&q=80',
    'https://images.unsplash.com/photo-1663336073171-2e2018f4c7ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSbbW-mlb63r3fkTVkExHndPfF7Xm8AZtcUaK5DEaXa3kQfimY6HeEEziUo0l_eX0snsY&usqp=CAU'
  ];

  List textTitles = [
    'Real Time Location',
    'Messaging',
    'Location Notification'
  ];
  List textDescriptions1 = [
    'You can track the location of the person',
    'You can share your location information',
    'You can get instant notification where'
  ];
  List textDescriptions2 = [
    'you want in real time',
    'with your loved ones and keep them informed.',
    'your friends are'
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.addListener(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Adaptive.h(100),
        width: Adaptive.w(100),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: Adaptive.h(100),
                      width: Adaptive.w(100),
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(
                              image: NetworkImage(images[index]),
                              fit: BoxFit.fill)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: Adaptive.h(60),
                                width: Adaptive.w(100),
                                child: Stack(
                                  // alignment: Alignment.topCenter,
                                  children: [
                                    Positioned(
                                      top: -35.sp,
                                      child: Container(
                                        height: Adaptive.h(30),
                                        width: Adaptive.w(100),
                                        child: ClipPath(
                                          clipper: ArcClipper(),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.blue.withOpacity(0.4),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: -16.sp,
                                      child: Container(
                                        height: Adaptive.h(30),
                                        width: Adaptive.w(100),
                                        child: ClipPath(
                                          clipper: ArcClipper(),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.blue.withOpacity(0.3),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 35.sp,
                                      child: Container(
                                        height: Adaptive.h(23),
                                        width: Adaptive.w(100),
                                        child: ClipPath(
                                          clipper: ArcClipper(),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: Adaptive.h(32),
                                width: Adaptive.w(100),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: List.generate(
                                          slides.length,
                                          (index) => buildDot(index, context),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.sp,
                                    ),
                                    Text(
                                      textTitles[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19.sp),
                                    ),
                                    SizedBox(
                                      height: 12.sp,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.sp, right: 25.sp),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(textDescriptions1[index],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.sp)),
                                          SizedBox(
                                            height: 5.sp,
                                          ),
                                          Text(textDescriptions2[index],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.sp)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.sp,
                                    ),
                                    SizedBox(
                                      height: 30.sp,
                                      width: Adaptive.w(80),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15.sp)),
                                          ),
                                          onPressed: () {
                                            _controller.animateToPage(
                                                _controller.page!.toInt() + 1,
                                                duration:
                                                    Duration(milliseconds: 400),
                                                curve: Curves.easeIn);

                                            if (_controller.page!.toInt() ==
                                                2) {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          StartYourFreeTrialScreen()));
                                            }
                                          },
                                          child: Text(
                                            'Continue',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.sp),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 15.sp,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      StartYourFreeTrialScreen()));
                                        },
                                        child: Text(
                                          'Skip',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.sp),
                                        )),
                                    SizedBox(
                                      height: 20.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25.sp : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.black : Colors.black26,
      ),
    );
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, size.height - 90) // Move up to create the arc
      ..quadraticBezierTo(size.width / 2, 0, size.width,
          size.height - 90) // Control points to create the arc
      ..lineTo(size.width,
          size.height) // Draw a straight line to the bottom right corner
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
