
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:jaunt/view/pages/Auth/forgetPassword/verifaction_forget.dart';
import '../../../../utilities/themes/apptheme.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class forgetPassMobile extends StatefulWidget {
  const forgetPassMobile({Key? key}) : super(key: key);

  @override
  State<forgetPassMobile> createState() => _forgetPassMobileState();
}

class _forgetPassMobileState extends State<forgetPassMobile> {
  var forgetMobileController = TextEditingController();
  var formdkeymobile = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Form(
        key: formdkeymobile,
        child: Padding(
          padding:  EdgeInsets.all(3.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Forget password?',
                  style: TextStyle(
                    color: AppTheme.purpleDark,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset('assets/images/forgetPass.png',
                  width: 110.w,
                  height: 30.h,),
                Text('Enter your phone number associated',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                Text('with your Juant account to send ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                Text(' your Verification code',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '  Phone Number',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff9d9d9d),
                          spreadRadius: 2,
                          blurRadius: 5,
                          // offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: IntlPhoneField(
                        decoration: const InputDecoration(
                          labelText: 'Enter phone number',
                        ),
                        initialCountryCode: 'EGYPT',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      if (formdkeymobile.currentState!.validate()) {
                        setState(() {

                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return verifactionScreen();
                          },
                          ),
                          );
                        });
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Color(0xffF2ECF9)),
                      shadowColor:
                      MaterialStateProperty.all(Colors.black),
                      fixedSize:
                      MaterialStateProperty.all(Size(171, 49)),
                      elevation: MaterialStateProperty.all(1.5),
                    ),
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 16.15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
