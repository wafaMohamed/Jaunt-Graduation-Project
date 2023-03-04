import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jaunt/utilities/themes/apptheme.dart';
import '../layout_screen.dart';
import 'SignUp.dart';
import 'package:sizer/sizer.dart';

import 'forgetPassword/forgetPassword.dart';



class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _loginState();
  }
}

class _loginState extends State<login> {
  PageController NextPageHome = PageController();
  var formdkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var value;
  bool obscureTextvalue1 =true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Container(
          padding:  EdgeInsets.symmetric(
            horizontal: 2.h,
            vertical: 1.h,
          ),
          child: Center(
            child: Form(
              key: formdkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/loginScreen.png',
                    width: 350.w,
                    height: 22.h,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome To ",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Juant',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff9661C9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 9, height: 9),
                  Center(
                    child: Text(
                      'log in to your existant ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff473E50),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'account in Juant ',
                      style: TextStyle(
                        color: Color(0xff473E50),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                   SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' E-mail',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 9.h,

                    child: TextFormField(
                      maxLines: 1,
                      minLines: 1,
                      maxLength: 20,
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'email must not be empty';
                        } else {
                          final RegExp emailValidatorRegExp =
                              RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                          if (!emailValidatorRegExp.hasMatch(value)) {
                            return 'email  not valid';
                          }
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefix: Icon(
                          Icons.mark_email_read_outlined,
                          color: Colors.purple,
                        ),
                        hintText: '  Juant@.com',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      cursorColor: Colors.purple,
                    ),
                  ),
                   SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 9.h,
                    child: TextFormField(
                      obscureText: obscureTextvalue1,
                      maxLines: 1,
                      minLines: 1,
                      maxLength: 20,
                      controller: passController,
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
                                obscureTextvalue1 =! obscureTextvalue1;
                              });
                            },
                            child: Icon( obscureTextvalue1
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xffB591D9),)),
                        prefix: Icon(
                          Icons.lock_outline,
                          color: Colors.purple,
                        ),
                        hintText: '  pass*****',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      cursorColor: Colors.purple,
                    ),
                  ),
                   SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const forgetPasswordScreen();
                          }));
                        },
                        child: Text(
                          'Forget password ?',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.sp,
                            color: AppTheme.purpleMedium,

                          ),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 2.5.h,
                  ),
                  MaterialButton(
                      splashColor: Color(0xffF2ECF9),
                      elevation: 3,
                      color: Color(0xffB591D9),
                      padding: EdgeInsets.symmetric(
                        vertical: 1.5.h,
                        horizontal: 17.h,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return layoutBottomNavigation();
                          },
                          ),
                          );
                        },
                        child:  Text('Sign In',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                            )),
                      ),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      onPressed: () {
                        formdkey.currentState!.validate();
                      }),
                   SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 1,
                        color: Colors.grey,
                      )),
                      Text(
                        ' Or Sign In With ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(child: Container(height: 1, color: Colors.grey)),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 2.h,
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 15.h, vertical: 1.5.h)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffB591D9)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffF2ECF9)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                    icon: const FaIcon(FontAwesomeIcons.google,
                        color: Color(0xff9661C9)),
                    label: Text(
                      'Google',
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return layoutBottomNavigation();
                      },
                      ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'don’t have account yet?',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp
                          ,
                          color: Color(0xff21162C),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const signUpScreen();
                          }));
                        },
                        child: Text(
                          '    Sign Up Now',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: Color(0xff9661C9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
