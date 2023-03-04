import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
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
                'Booking place',
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
                'Manage Reservations',
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
            child: Image.asset(
              'assets/images/intro2.png',
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
                    'Booking connects a range of  incredible places  from parks to Restaurants and much more. No matter where you want to go or what you want to do, Booking makes it easy ',
                    style: TextStyle(fontSize: 12.sp,
                        fontWeight: FontWeight.w300

                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
