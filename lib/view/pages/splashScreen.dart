import 'dart:async';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaunt/utilities/themes/apptheme.dart';

import 'onBoardingScreens/onboarding_screen.dart';


class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => onBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.purpleSplashWight,
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(8.0.h),
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              Text(
                'Jaunt',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.sp,
                  fontFamily: 'Montserrat',
                  color: AppTheme.purpledeep,
                ),
              ),
              SizedBox(height: 6.h),
              Container(
                height: 10.h,
                width: 20.w,


                child: CircularProgressIndicator(
                  color: AppTheme.purpleLight,
                  backgroundColor: AppTheme.purpleMedium,
                ),
              ),
            ],
          ),
        ),
        /*Image.asset('assets/splash.png'),*/
      ),

    );
  }
}
