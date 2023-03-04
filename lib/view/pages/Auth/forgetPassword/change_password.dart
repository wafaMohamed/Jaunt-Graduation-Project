
import 'package:flutter/material.dart';
import '../../../../utilities/themes/apptheme.dart';
import 'package:sizer/sizer.dart';



class changePass extends StatefulWidget {
  const changePass({Key? key}) : super(key: key);

  @override
  State<changePass> createState() => _changePassState();
}

class _changePassState extends State<changePass> {

  var formdkeyChangePassSave = GlobalKey<FormState>();
  bool obscureNewPass = true;
  bool obscureConfirmPass = true;
  var newPassController = TextEditingController();
  var confirmPassController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Form(
        key: formdkeyChangePassSave,
        child: Padding(
          padding:  EdgeInsets.all(2.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Change Password',
                  style: TextStyle(
                    color: AppTheme.purpleDark,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset('assets/images/changePass.png',
                  width: 112.w,
                  height: 30.h,),
                Text('Please enter new password that are',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                Text('different form previously used',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Text(
                      'New Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 1.h,
                ),
                Container(
                  width: double.infinity,
                  height: 8.5.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25)),
                  child: TextFormField(
                    obscureText: obscureNewPass,
                    controller: newPassController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'password must not be empty';
                      } else if (value.length < 8) {
                        return 'password short';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureNewPass = !obscureNewPass;
                            });
                          },
                          child: Icon(
                            obscureNewPass
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xffB591D9),
                          )),
                      prefix: Icon(
                        Icons.lock_outline,
                        color: Colors.purple,
                      ),
                      hintText: '  Pass***',
                      hintStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    cursorColor: Colors.purple,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Text(
                      'Confirm Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25)),
                  child: TextFormField(
                    obscureText: obscureConfirmPass,
                    controller: confirmPassController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'password must not be empty';
                      } else if (value.length < 8) {
                        return 'password short';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureConfirmPass = !obscureConfirmPass;
                            });
                          },
                          child: Icon(
                            obscureConfirmPass
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xffB591D9),
                          )),
                      prefix: Icon(
                        Icons.lock_outline,
                        color: Colors.purple,
                      ),
                      hintText: '  Pass****',
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    cursorColor: Colors.purple,
                  ),
                ),


                SizedBox(height: 2.h,),
                GestureDetector(
                  onTap: () {
                    /*     Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return login();
                        }));*/
                  },
                  child: Text(
                    ' Changes Password',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9661C9),
                    ),
                  ),
                ),
                SizedBox(height: 4.h,),

                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      if (formdkeyChangePassSave.currentState!.validate()) {
                        setState(() {

                          /*Navigator.push(context, MaterialPageRoute(builder: (context){
                            return verifactionScreen();
                          },
                          ),
                          );*/
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
                      MaterialStateProperty.all(Size(100.h, 7.h)),
                      elevation: MaterialStateProperty.all(1.5),
                    ),
                    child: Text(
                      'SAVE',
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 18.sp,
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
