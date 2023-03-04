import 'package:flutter/material.dart';
import 'package:jaunt/utilities/themes/apptheme.dart';
 import 'package:sizer/sizer.dart';
import 'package:lottie/lottie.dart';
import '../pages/Auth/loginScreen.dart';


class unloginExploreScreen extends StatefulWidget {
  const unloginExploreScreen({Key? key}) : super(key: key);

  @override
  State<unloginExploreScreen> createState() => _unloginExploreScreenState();
}

class _unloginExploreScreenState extends State<unloginExploreScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              '     Where You Will ',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  color: AppTheme.purplewight,
                  shadows: [
                    Shadow(color: AppTheme.purpleDark),
                  ]),
            ),
            Text(
              ' GO.?',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  color: AppTheme.purpleMedium),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => null,
              icon: Icon(Icons.search, color: AppTheme.purpleMedium)),
        ],
        automaticallyImplyLeading: false ,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppTheme.purpleLight, AppTheme.purplewight],
                begin: Alignment.topLeft,
                end: Alignment.topRight),
          ),
        ),
      ),
      body:
      SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.05,
            ),
            Padding(
                padding:  EdgeInsets.only(top: 12.h),
                child: Column(
                  children: [
                    LottieBuilder.network(
                      'https://assets4.lottiefiles.com/packages/lf20_l5qvxwtf.json',
                      height: 280,
                      fit: BoxFit.cover,
                      reverse: true,
                      repeat: true,
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.center ,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Please login to view your Explore',style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                        Text('and #GetThingsDone',style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  login(),
                            ));
                      },
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppTheme.purpleMedium,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              ),
                            ]),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),

                  ],
                )
            ),
          ],
        ),
      ),

    );
  }
}
