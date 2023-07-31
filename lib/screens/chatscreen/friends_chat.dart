import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'chat_screen.dart';

class FriendsChat extends StatefulWidget {
  const FriendsChat({Key? key}) : super(key: key);

  @override
  State<FriendsChat> createState() => _FriendsChatState();
}

class _FriendsChatState extends State<FriendsChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Conversations',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: Adaptive.w(100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(2, (index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreen()));
                    },
                    child: Container(
                      height: 30.sp,
                      width: Adaptive.w(100),
                      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 18.sp,
                            backgroundColor: Colors.black38,
                            // child: Icon(Icons.person),
                          ),
                          SizedBox(
                            width: 15.sp,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FriendName',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16.sp),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                'Friend messages',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            '2min',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Adaptive.w(100),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
