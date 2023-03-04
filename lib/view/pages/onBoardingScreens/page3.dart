import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),

      body: Column(
        children: [
          SizedBox(height:8.h,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width:3.w ,),
              Text('Know More',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22.sp,
                ),),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 3.w ,),

              Text('Get Your Way',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: Color(0xff7E7885),

                ),),
            ],),
          SizedBox(height:1.h ,),

          Center(child: Image.asset(
            'assets/images/intro3.png',
            width: 120.w,
            height: 50.h,
          ),
          ),
          SizedBox(height:0.5.h),
          Padding(
            padding:  EdgeInsets.all(2.h),
            child: Container(

              color: Colors.white,

              child: Center(child: Text('We will help you find your way to the place you want around you Easy and safe search for all categories for any place you want in your country',
              style: TextStyle(
                fontSize: 12.sp,
                  fontWeight: FontWeight.w300

              ),
              )),

            ),
          ),

        ],
      ),
    );

  }
}
