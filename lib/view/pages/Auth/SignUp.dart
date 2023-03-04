// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';
import '../layout_screen.dart';
import 'loginScreen.dart';
import 'package:csc_picker/csc_picker.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({Key? key}) : super(key: key);

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  int currentStep = 0;
  var lastStepController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var nameController = TextEditingController();
  var confirmpassController = TextEditingController();
  var formdkey = GlobalKey<FormState>();
  var formdkey1 = GlobalKey<FormState>();
  var formdkey2 = GlobalKey<FormState>();
  var value;
  bool obscureTextvalue = true;
  bool obscureTextvalue2 = true;
  bool isChecked = false;
  bool onLastStep = false;

  //imagepicker varibales
  late File image;
  final imagepicker = ImagePicker();

//Function to get Image from camera
  void uploadImageCamera() async {
    var PickedImage = await imagepicker.pickImage(source: ImageSource.camera);
    if (PickedImage != null) {
      setState(() {
        image = File(PickedImage.path);
      });
    } else {}
  }

  //Function to get Image from gallery
  void uploadImageGallery() async {
    var PickedImage = await imagepicker.pickImage(source: ImageSource.gallery);
    if (PickedImage != null) {
      setState(() {
        image = File(PickedImage.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.all(21),
          onPressed: () {
            if (currentStep != 0) {
              setState(() => currentStep--);
            }
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffB591D9),
            size: 35,
          ),
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Color(0xffB591D9),
              secondary: Color(0xff9661C9),
            ),
            canvasColor: Colors.white),
        child: Stepper(
          elevation: 0.0,
          onStepTapped: (Step) => setState(() => currentStep = Step),
          controlsBuilder: (context, _) {
            return Container();
          },
          type: StepperType.horizontal,
          steps: getSteps(context),
          currentStep: currentStep,
        ),
      ),
    );
  }

  List<Step> getSteps(BuildContext context) => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          //Done Icon
          isActive: currentStep >= 0,
          title: Text('information'),
          content: Form(
            key: formdkey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Let’s Get Started!',
                        style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Create an account to Juant',
                        style: TextStyle(fontSize: 13.sp, color: Colors.black),
                      ),
                      Text(
                        'to get all features',
                        style: TextStyle(fontSize: 13.sp, color: Colors.black),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            ' Name',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: double.infinity,
                            height: 70,
                            child: TextFormField(
                              controller: nameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please enter your full name';
                                } else
                                  return null;
                              },
                              decoration: InputDecoration(
                                prefix: Icon(
                                  Icons.person_outline_rounded,
                                  color: Colors.purple,
                                ),
                                hintText: ' Your Name...',
                                hintStyle: TextStyle(fontSize: 14),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              cursorColor: Colors.purple,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'E-mail',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'email must not be empty';
                                } else {
                                  final RegExp emailValidatorRegExp = RegExp(
                                      r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
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
                                hintText: '  example@mail.com',
                                hintStyle: TextStyle(fontSize: 14),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              cursorColor: Colors.purple,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25)),
                            child: TextFormField(
                              obscureText: obscureTextvalue2,
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
                                        obscureTextvalue2 = !obscureTextvalue2;
                                      });
                                    },
                                    child: Icon(
                                      obscureTextvalue2
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
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Confirm Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25)),
                            child: TextFormField(
                              obscureText: obscureTextvalue,
                              controller: confirmpassController,
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
                                        obscureTextvalue = !obscureTextvalue;
                                      });
                                    },
                                    child: Icon(
                                      obscureTextvalue
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
                          SizedBox(
                            height: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: Color(0xffCBB1E4),
                                    ),
                                    child: Checkbox(
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() => isChecked = value!);
                                      },
                                      activeColor: Color(0xffCBB1E4),
                                      checkColor: Color(0xff9661C9),
                                    ),
                                  ),
                                  Text(
                                    'I Agree to Juant',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff21162C),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                          // isScrollControlled: true,
                                          isDismissible: true,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              //alignment: Alignment.topLeft,
                                              color: Color(0xffD9CEF9),
                                              //decoration: ShapeDecoration.fromBoxDecoration(BorderRadius.circular(43)),
                                              height: 100.h,
                                              padding: EdgeInsets.all(26),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(height: 5.h),
                                                      Text('Terms Of Services',
                                                          style: TextStyle(
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff21162C))),
                                                      SizedBox(
                                                        width: 27.w,
                                                      ),
                                                      CircleAvatar(
                                                        backgroundColor:
                                                            Color(0xffECEAF8),
                                                        child: CloseButton(
                                                          color:
                                                              Color(0xff9661C9),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text(
                                                    "Please read our Terms of Service carefully below prior to using our marketplace and its services as it governs your use of our Marketplace.Your use of juant Marketplace is governed by these T&Cs. You should read them carefully before you use our Marketplace. It is your responsibility when using the Marketplace to provide accurate information.Any person accessing the Platform is subject to and agrees to the terms and conditions set out in this notice. If a person does not wish to be bound by these terms and conditions, this person is prohibited from accessing the site and this person may not display, use, download or copy or distribute content obtained on this Platform. By using this Platform, the User undertakes to abide by these terms and conditions.",
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Color(0xff21162C),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    child: Text(
                                      'Terms & Conditions ',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff9661C9),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              onPressed: () {
                                if (formdkey.currentState!.validate()) {
                                  setState(() {
                                    currentStep = 1;
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
                          SizedBox(height: 3.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'have already account.?  ',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff21162C),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return login();
                                  }));
                                },
                                child: Text(
                                  'Sign in now',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff9661C9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: Text('profile'),
          content: Form(
            key: formdkey1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Just 1 More Step',
                            style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'Complete Your profile',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Text(
                            'information to start',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Pick Up Profile Picture',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: Color(0xff21162C)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    GestureDetector(
                      // behavior: HitTestBehavior.translucent,
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          builder: (context) =>
                              DraggableScrollableSheet(
                              initialChildSize: 0.28,
                              maxChildSize: 0.3,
                              minChildSize: 0.28,
                              expand: false,
                              builder: (context, scrollController) {
                                return SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(padding: EdgeInsets.all(16)),
                                      Row(
                                        children: [
                                          Text(
                                            '   SELECT WAY TO UPLOD IMAGE',
                                            style: TextStyle(
                                              color: Color(0XFF21162C),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          CircleAvatar(
                                            backgroundColor: Color(0xffF2ECF9),
                                            child: CloseButton(
                                              color: Color(0xff9661C9),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      //camera
                                      GestureDetector(
                                        onTap: uploadImageCamera,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(16),
                                              child: Container(
                                                height: 42,
                                                width: 42,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                    color: Colors.grey.shade300,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors
                                                            .grey.shade600,
                                                        blurRadius: 2,
                                                      )
                                                    ]),
                                                child: CircleAvatar(
                                                  radius: 85,
                                                  foregroundColor: Colors.black,
                                                  backgroundColor:
                                                      Color(0xffF2ECF9),
                                                  child: Icon(
                                                    Icons.camera_alt,
                                                    size: 25,
                                                    color: Color(0xff9661C9),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 9,
                                            ),
                                            Text(
                                              'TAKE PHOTO BY CAMERA',
                                              style: TextStyle(
                                                color: Color(0XFF21162C),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 1,
                                              width: 163,
                                              color: Color(0xff9183D8),
                                            ),
                                            Text(
                                              '  OR ',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff473E50),
                                              ),
                                            ),
                                            Container(
                                              height: 1,
                                              width: 163,
                                              color: Color(0xff9183D8),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //Gllery
                                      GestureDetector(
                                        onTap: uploadImageGallery,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(16),
                                              child: Container(
                                                height: 42,
                                                width: 42,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                    color: Colors.grey.shade300,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors
                                                            .grey.shade600,
                                                        blurRadius: 2,
                                                      )
                                                    ]),
                                                child: CircleAvatar(
                                                  radius: 85,
                                                  foregroundColor: Colors.black,
                                                  backgroundColor:
                                                      Color(0xffF2ECF9),
                                                  child: Icon(
                                                    Icons.photo,
                                                    size: 25,
                                                    color: Color(0xff9661C9),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 9,
                                            ),
                                            Text(
                                              'CHOOSE FROM GALLERY',
                                              style: TextStyle(
                                                color: Color(0XFF21162C),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  controller: scrollController,
                                );
                              }),
                        );
                      },
                      child: Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 7,
                                //spreadRadius: 1,
                              )
                            ]),
                        child: CircleAvatar(
                          // backgroundImage: imagepicker==null?null: FileImage(image),
                          radius: 85,
                          foregroundColor: Colors.black,
                          backgroundColor: Color(0xffF2ECF9),

                          child: Icon(
                            Icons.camera_alt,
                            size: 60,
                            color: Color(0xff9661C9),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: Color(0xff21162C)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    //Phone num
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
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Set Your City',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: Color(0xff21162C)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CSCPicker(
                      onCountryChanged: (country) {},
                      onCityChanged: (city) {},
                      onStateChanged: (state) {},
                      stateDropdownLabel: 'Governorate',
                      currentCountry: 'Egypt',
                      flagState: CountryFlag.ENABLE,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          if (formdkey1.currentState!.validate()) {
                            setState(() {
                              currentStep = 2;
                            });
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    SizedBox(height: 3.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'have already account.?  ',
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff21162C),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return login();
                            }));
                          },
                          child: Text(
                            'Sign in now',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
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
        Step(
          state: currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 2,
          title: Text('Done'),
          content: Form(
            key: formdkey2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(children: [
                    Text(
                      'congratulation!',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff21162C)),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Now you can get Juant',
                      style:
                          TextStyle(fontSize: 14.sp, color: Color(0xff473E50)),
                    ),
                    Text(
                      ' all features',
                      style:
                          TextStyle(fontSize: 14.sp, color: Color(0xff473E50)),
                    ),
                    SizedBox(height: 3),
                    Image.asset(
                      'assets/images/signUp.png',
                      width: 100.w,
                      height: 40.h,
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Find Your suitable place and ',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                            ),
                            Text(
                              'Booking Suitable places for Your ',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              'Occasion',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return layoutBottomNavigation();
                              },
                            ),
                          );
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0XFFB591D9)),
                          shadowColor: MaterialStateProperty.all(Colors.black),
                          fixedSize: MaterialStateProperty.all(Size(171, 49)),
                          elevation: MaterialStateProperty.all(1.5),
                        ),
                        child: Text(
                          'START',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ];
}
