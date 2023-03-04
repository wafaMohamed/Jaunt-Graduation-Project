
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/themes/apptheme.dart';
import 'home_screen.dart';
import 'nave_bar.dart';

class personalInfo2 extends StatefulWidget {
  const personalInfo2({Key? key}) : super(key: key);

  @override
  State<personalInfo2> createState() => _personalInfo2State();
}

class _personalInfo2State extends State<personalInfo2> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var nameController = TextEditingController();
  var formdkeyInfo = GlobalKey<FormState>();
  var value;
  bool obscureInfo = true;


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
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Edit Personal',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  color: AppTheme.purplewight,
                  shadows: [
                    Shadow(color: AppTheme.purpleDark),
                  ]),
            ),
            Text(
              ' Information',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  color: AppTheme.purpleMedium),
            ),
          ],
        ),
        centerTitle: true,
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
      Form(
        key: formdkeyInfo,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' Edit Profile Picture',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' Edit Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
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
                        hintText: ' user name...',
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
                    children: [
                      Text(
                        ' Edit E-mail',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
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
                        ' Edit Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
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
                      obscureText: obscureInfo,
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
                                obscureInfo =! obscureInfo;
                              });
                            },
                            child: Icon( obscureInfo
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

                  SizedBox(height: 2.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' Edit Phone Number',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
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
                        'Edit Your City',
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
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      onPressed: () {
                        if (formdkeyInfo.currentState!.validate()) {
                          setState(() {
                            
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
                        MaterialStateProperty.all(AppTheme.purplewight),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                        fixedSize: MaterialStateProperty.all(Size(250, 49)),
                        elevation: MaterialStateProperty.all(1.5),
                      ),
                      child: Text(
                        'Save Changes',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
