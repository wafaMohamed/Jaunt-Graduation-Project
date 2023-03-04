import 'package:flutter/material.dart';
import 'package:jaunt/view/pages/Auth/forgetPassword/verifaction_forget.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/themes/apptheme.dart';

class forgetPassMail extends StatefulWidget {
  const forgetPassMail({Key? key}) : super(key: key);

  @override
  State<forgetPassMail> createState() => _forgetPassMailState();
}

class _forgetPassMailState extends State<forgetPassMail> {
  var forgetEmailController = TextEditingController();
  var formdkeyforgetpass = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Form(
        key: formdkeyforgetpass,
        child: Padding(
          padding: EdgeInsets.all(3.h),
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
                Image.asset(
                  'assets/images/forgetPass.png',
                  width: 110.w,
                  height: 30.h,
                ),
                Text(
                  'Enter the E-mail address associated',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  'with your Juant account to send ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  ' your Verification code',
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
                    controller: forgetEmailController,
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
                  height: 13.h,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      if (formdkeyforgetpass.currentState!.validate()) {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return verifactionScreen();
                              },
                            ),
                          );
                        });
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffF2ECF9)),
                      shadowColor: MaterialStateProperty.all(Colors.black),
                      fixedSize: MaterialStateProperty.all(Size(171, 49)),
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
