
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';
import 'package:lottie/lottie.dart';
import '../pages/Auth/loginScreen.dart';

class creditCardUnlogin extends StatefulWidget {
  const creditCardUnlogin({Key? key}) : super(key: key);

  @override
  State<creditCardUnlogin> createState() => _creditCardUnloginState();
}

class _creditCardUnloginState extends State<creditCardUnlogin> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              '   Payment',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  color: AppTheme.purpleMedium,
                  shadows: [
                    Shadow(color: AppTheme.purpleDark),
                  ]),
            ),
            Text(
              '  Method',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  color: AppTheme.purplewight),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => null,
              icon: Icon(Icons.credit_card,color: AppTheme.purpleMedium,size: 28,)),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppTheme.purpleLight, AppTheme.purplewight],
                begin: Alignment.topLeft,
                end: Alignment.topRight),
          ),
        ),
      ),
      body:  SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.05,
            ),
            Padding(
                padding:  EdgeInsets.only(top: 17.h),
                child: Column(
                  children: [
                    LottieBuilder.network(
                      'https://assets10.lottiefiles.com/packages/lf20_yopo5lmk.json',
                      height: 200,
                      fit: BoxFit.cover,
                      reverse: true,
                      repeat: true,
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.center ,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Please login to view your Payment',style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                        Text(' method and #GetThingsDone',style:
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
