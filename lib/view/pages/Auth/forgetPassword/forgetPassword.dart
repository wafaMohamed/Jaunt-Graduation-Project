import 'package:flutter/material.dart';
import 'package:jaunt/utilities/themes/apptheme.dart';
import 'package:jaunt/view/pages/Auth/forgetPassword/forget_mail.dart';
import 'package:sizer/sizer.dart';
import 'forget_mobile_no.dart';

class forgetPasswordScreen extends StatefulWidget {
  const forgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<forgetPasswordScreen> createState() => _forgetPasswordScreenState();
}

class _forgetPasswordScreenState extends State<forgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(3.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(children: [
                  SizedBox(
                    height: 17.h,
                  ),
                  Text(
                    'Forget password?',
                    style: TextStyle(
                      color: AppTheme.purpleDark,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Text(
                    'Please select option to send reset',
                    style: TextStyle(
                      color: AppTheme.purpleDark,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'password verfication code',
                    style: TextStyle(
                      color: AppTheme.purpleDark,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 9.h,
              ),

             GestureDetector(
               onTap:(){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return forgetPassMail();
                 },
                 ),
                 );

               } ,
               child: Container(
                 color: AppTheme.purplewight,
                 height: 17.h,
                 width: 115.w,
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SizedBox(
                       width: 5.w,
                     ),
                   CircleAvatar(
                     radius: 30,
                     backgroundColor: AppTheme.purpleLight,
                     child: Icon(Icons.mail,
                     color: AppTheme.purplewight,
                     size: 33),
                   ),
                   SizedBox(
                     width: 2.w,
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                     Text(
                       'Send Via E-mail',
                       style: TextStyle(
                         color: AppTheme.purpleDark,
                         fontSize: 15.sp,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                     SizedBox(
                       height: 1.5.h,
                     ),
                       Text(
                         '  Enter your E-mail to send ',
                         style: TextStyle(
                           color: AppTheme.purpleDark,
                           fontSize: 12.sp,
                           fontWeight: FontWeight.w400,
                         ),
                       ),
                       Text(
                         ' the reset password link',
                         style: TextStyle(
                           color: AppTheme.purpleDark,
                           fontSize: 12.sp,
                           fontWeight: FontWeight.w400,
                         ),
                       ),

                   ],)

                 ],
                 ),
               ),
             ),
      SizedBox(
        height: 7.h,
      ),

      GestureDetector(
        onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return forgetPassMobile();
          },
          ),
          );

        } ,
        child: Container(
          color: AppTheme.purplewight,
          height: 17.h,
          width: 115.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 5.w,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: AppTheme.purpleLight,
                child: Icon(Icons.phone,
                    color: AppTheme.purplewight,
                    size: 33),
              ),
              SizedBox(
                width: 2.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    'Send Via Mobile Number',
                    style: TextStyle(
                      color: AppTheme.purpleDark,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Text(
                    '  Enter your mobile number to ',
                    style: TextStyle(
                      color: AppTheme.purpleDark,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    ' send the reset password link ',
                    style: TextStyle(
                      color: AppTheme.purpleDark,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                ],)

            ],
          ),
        ),
      ),

            ],
          ),
        ),
      ),
    );
  }
}
