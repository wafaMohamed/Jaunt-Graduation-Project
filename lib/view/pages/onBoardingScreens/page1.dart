import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 3.w,
              ),
              Text(
                'Suitable places',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22.sp,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 3.w,
              ),
              Text(
                'Different types',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: Color(0xff7E7885),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Center(
            child:
                // Lottie.asset("assets/videos/map.json")
                Image.asset(
              'assets/images/intro1.png',
              width: 120.w,
              height: 50.h,
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Padding(
            padding: EdgeInsets.all(2.h),
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  'Choose the perfect location for you to help yourself search places ,also can work with a owner leasing representative or commercial real estate broker',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
