import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> _messages = []; // List to store chat messages
  final TextEditingController _textEditingController = TextEditingController();

  // Function to add new messages
  void _sendMessage(String message) {
    setState(() {
      _messages.add(Message(text: message, isSentByCurrentUser: true));
    });
    _textEditingController.clear(); // Clear the text input field
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 22.sp,
            )),
        title: Row(
          children: [
            CircleAvatar(
              radius: 16.sp,
              backgroundColor: Colors.pinkAccent.shade400,
            ),
            SizedBox(
              width: 10.sp,
            ),
            Text(
              'FriendsName',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.delete,
                color: Colors.redAccent,
                size: 22.sp,
              )),
          SizedBox(
            width: 12.sp,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Column(
              children: List.generate(2, (index) {
                return Column(
                  children: [
                    ChatBubble(
                      backGroundColor:
                          index == 0 ? Colors.white12 : Colors.blue,
                      margin: EdgeInsets.only(
                          left: index == 0 ? 20.sp : 40.sp,
                          right: index == 0 ? 40.sp : 20.sp,
                          bottom: 10.sp),
                      clipper: ChatBubbleClipper5(
                        type: index == 0
                            ? BubbleType.receiverBubble
                            : BubbleType.sendBubble,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 10.sp,
                            right: 10.sp,
                            top: 10.sp,
                            bottom: 10.sp),
                        child: index == 0
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 30.sp,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CircleAvatar(
                                          radius: 16.sp,
                                          backgroundColor: Colors.pinkAccent,
                                        ),
                                        Text('1min ago')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 55.sp,
                                    child: Text(
                                      'Where are you?',
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.black),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 55.sp,
                                    child: Text(
                                      'At my home of my new husband you know.',
                                      style: TextStyle(
                                          fontSize: 16.sp, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    height: 30.sp,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CircleAvatar(
                                          radius: 16.sp,
                                          backgroundColor: Colors.redAccent,
                                        ),
                                        Text(
                                          '1min ago',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    index == 1
                        ? Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 20.sp),
                              child: Container(
                                width: 66.sp,
                                height: 66.sp,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black,
                                          // offset: Offset(1, 1),
                                          blurRadius: 1.sp)
                                    ],
                                    borderRadius: BorderRadius.circular(20.sp)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.sp,
                                    ),
                                    Container(
                                      height: 55.sp,
                                      width: 55.sp,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                    SizedBox(
                                      height: 15.sp,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 15.sp, right: 15.sp),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Jerome Powell',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 10.sp,
                                              ),
                                              Text(
                                                '23 Street, NJ',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 15.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          Text(
                                            'Just Now',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                );
              }),
            ),
            Spacer(),
            _buildMessageComposer()
          ],
        ),
      ),
    );
  }

  // Function to build the message composer widget (text input field and send button)
  Widget _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: 'Type a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              if (_textEditingController.text.trim().isNotEmpty) {
                _sendMessage(_textEditingController.text.trim());
              }
            },
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isSentByCurrentUser;

  Message({required this.text, required this.isSentByCurrentUser});
}
