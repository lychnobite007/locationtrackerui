import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 22.sp,
            )),
        title: Text(
          'My Address Information',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Adaptive.w(100),
          height: Adaptive.h(90),
          child: Column(
            children: [
              Container(
                height: Adaptive.h(23),
                color: Colors.blue,
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: Adaptive.h(62),
                width: Adaptive.w(100),
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                      child: TextFormField(
                        style: TextStyle(fontSize: 17.sp, color: Colors.black),
                        decoration: InputDecoration(
                            hintText:
                                'Address title (My home address, My work..',
                            hintStyle: TextStyle(
                                fontSize: 17.sp, color: Colors.black38),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.sp))),
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: Adaptive.w(45),
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 17.sp, color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'Province',
                                    labelStyle: TextStyle(
                                        fontSize: 17.sp, color: Colors.black38),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.sp))),
                              )),
                          SizedBox(
                              width: Adaptive.w(45),
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 17.sp, color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'District',
                                    labelStyle: TextStyle(
                                        fontSize: 17.sp, color: Colors.black38),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.sp))),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                      child: TextFormField(
                        style: TextStyle(fontSize: 17.sp, color: Colors.black),
                        decoration: InputDecoration(
                            labelText: 'Neighbourhood',
                            labelStyle: TextStyle(
                                fontSize: 17.sp, color: Colors.black38),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.sp))),
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: Adaptive.w(45),
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 17.sp, color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'Street',
                                    labelStyle: TextStyle(
                                        fontSize: 17.sp, color: Colors.black38),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.sp))),
                              )),
                          SizedBox(
                              width: Adaptive.w(45),
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 17.sp, color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'Building No.',
                                    labelStyle: TextStyle(
                                        fontSize: 17.sp, color: Colors.black38),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.sp))),
                              )),
                        ],
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 30.sp,
                      width: Adaptive.w(90),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.sp))),
                          onPressed: () {},
                          child: Text(
                            'Save My Address',
                            style: TextStyle(fontSize: 18.sp),
                          )),
                    )
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
