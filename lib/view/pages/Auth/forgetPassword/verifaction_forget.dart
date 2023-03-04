
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/themes/apptheme.dart';
import 'change_password.dart';
import 'package:flutter/services.dart';

class verifactionScreen extends StatefulWidget {
  const verifactionScreen({Key? key}) : super(key: key);

  @override
  State<verifactionScreen> createState() => _verifactionScreenState();
}

class _verifactionScreenState extends State<verifactionScreen> {

  var verifactionController = TextEditingController();
  var formdkeyverifaction = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Form(
        key: formdkeyverifaction,
        child: Padding(
          padding:  EdgeInsets.all(3.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Verifaction',
                  style: TextStyle(
                    color: AppTheme.purpleDark,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset('assets/images/forgetPass.png',
                  width: 110.w,
                  height: 30.h,),
                Text('Please enter verifaction code we ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                Text('we just sent to you ',
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
                      ' Enter verifaction Code ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 9.h,
                      width: 20.w,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'not valid';
                          }
                          return null;
                        },
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1){},
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor:AppTheme.purpleMedium,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],

                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                      width: 20.w,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'not valid';
                          }
                          return null;
                        },
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin2){},
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor:AppTheme.purpleMedium,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],

                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                      width: 20.w,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'not valid';
                          }
                          return null;
                        },
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin3){},
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor:AppTheme.purpleMedium,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],

                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                      width: 20.w,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'not valid';
                          }
                          return null;
                        },
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin4){},
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        cursorColor:AppTheme.purpleMedium,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,

                        ],

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'didn’t receive code.?! ',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff21162C),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                   /*     Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return login();
                        }));*/
                      },
                      child: Text(
                        '  Resend code',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff9661C9),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h,),

                Container(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      if (formdkeyverifaction.currentState!.validate()) {
                        setState(() {

                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return changePass();
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
