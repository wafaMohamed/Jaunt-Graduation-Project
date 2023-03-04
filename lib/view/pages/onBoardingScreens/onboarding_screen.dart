
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaunt/view/pages/onBoardingScreens/page1.dart';
import 'package:jaunt/view/pages/onBoardingScreens/page2.dart';
import 'package:jaunt/view/pages/onBoardingScreens/page3.dart';
import 'package:jaunt/view/unlogin/home_unlogin.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../unlogin/layout_unlogin.dart';
import '../Auth/loginScreen.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({Key? key}) : super(key: key);

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}
class _onBoardingScreenState extends State<onBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(1.h),
        child: Stack(
          children: [

            PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage=(index==2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),

            ],
          ),
            Container(

              alignment: Alignment(0,0.72),
                child: SmoothPageIndicator
                  (controller: _controller, count: 3,
                  effect: ExpandingDotsEffect(
                    dotWidth: 4.w,
                    dotHeight: 2.h,

                    dotColor: Color(0xff9183D8),
                    activeDotColor:
                    Color(0xff9661C9),
                  ),
                ),
            ),
            SizedBox(height:30.h ,
              width: 30.w,
            ),


            Row(

              children: [
               Spacer(),

                Container(
                  alignment: Alignment(0,0.90),
                  child:
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return unloginLayoutBottomNavigation();
                        },
                        ),
                        );

                      },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),),),
                          backgroundColor:MaterialStateProperty.all(Color(0xffF2ECF9)) ,

                        shadowColor: MaterialStateProperty.all(Colors.black),
                          fixedSize:MaterialStateProperty.all(Size(171, 49)),
                          elevation: MaterialStateProperty.all(1.5),


                        ),

                        child: Text('SKIP',
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),

                        ),

                      ),


                ),
                SizedBox(width: 5.w),
                Container(
                    alignment: Alignment(0,0.90),
                    child:
                    TextButton(
                        onPressed: (){
                      if( onLastPage){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return login();
                        },
                        ),
                        );
                      }
                      else
                      _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),),),

                            backgroundColor:MaterialStateProperty.all(Color(0xffB591D9)) ,
                            fixedSize:MaterialStateProperty.all(Size(171, 49)) ,
                          elevation: MaterialStateProperty.all(2),


                        ),

                        child: Text(onLastPage?'Login?':'NEXT',
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),))


                ),
                Spacer(),

              ],

            ),

          ],

        ),
      ),

    );
  }
}
