import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Notifications',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w400),
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
          height: Adaptive.h(100),
          width: Adaptive.w(100),
          child: Padding(
            padding: EdgeInsets.only(left: 10.sp, right: 15.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Column(
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.sp),
                      child: Container(
                        width: Adaptive.w(100),
                        height: 32.sp,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 21.sp,
                              backgroundColor: Colors.black.withOpacity(0.05),
                              child: Center(
                                  child: Icon(
                                Icons.person,
                                color: Colors.black.withOpacity(0.1),
                                size: 23.sp,
                              )),
                            ),
                            SizedBox(width: 5.sp),
                            Container(
                              width: Adaptive.w(70),
                              child: Text(
                                'You submitted the ibo connection request.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.5.sp,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Text(
                              '1min',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
