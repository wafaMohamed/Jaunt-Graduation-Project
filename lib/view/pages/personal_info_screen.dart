
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaunt/view/pages/personal_info_2.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';
 import 'dart:io';
 import 'package:image_picker/image_picker.dart';
 import 'package:intl_phone_field/intl_phone_field.dart';
 import 'package:csc_picker/csc_picker.dart';


class personalInformation extends StatefulWidget {
   const personalInformation({Key? key}) : super(key: key);

   @override
   State<personalInformation> createState() => _personalInformationState();
 }

 class _personalInformationState extends State<personalInformation> {
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
               ' Personal',
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
               '  Information',
               style: TextStyle(
                   fontSize: 16.sp,
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
                         ' Profile Picture',
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
                   Container(
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
                       backgroundImage: AssetImage('assets/images/person.jpeg'),
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text(
                         ' Name',
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
                     height: 8,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text(
                         ' E-mail',
                         style: TextStyle(
                           fontWeight: FontWeight.w500,
                           fontSize: 14.sp,
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 10,
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
                         hintText: '  example@Juant.com',
                         border: OutlineInputBorder(
                             borderSide: BorderSide(),
                             borderRadius: BorderRadius.circular(8)),
                       ),
                       cursorColor: Colors.purple,
                     ),
                   ),
                   SizedBox(
                     height:10,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text(
                         ' Password',
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

                   SizedBox(height: 10),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text(
                         ' Phone Number',
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
                             labelText: 'your phone number',
                           ),
                           initialCountryCode: 'EGYPT',
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text(
                         ' City',
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
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) =>
                                   personalInfo2(),
                             ));
                       },
                       style: ButtonStyle(
                         shape:
                         MaterialStateProperty.all<RoundedRectangleBorder>(
                           RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20),
                           ),
                         ),
                         backgroundColor:
                         MaterialStateProperty.all(AppTheme.purpleLight),
                         shadowColor: MaterialStateProperty.all(Colors.black),
                         fixedSize: MaterialStateProperty.all(Size(250, 49)),
                         elevation: MaterialStateProperty.all(1.5),
                       ),
                       child: Text(
                         ' Change Information',
                         style: TextStyle(
                           color: Colors.white,
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
