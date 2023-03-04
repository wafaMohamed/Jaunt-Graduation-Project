 import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';
 import 'package:lottie/lottie.dart';
 import '../pages/Auth/loginScreen.dart';

class favoritUnlogin extends StatefulWidget {
   const favoritUnlogin({Key? key}) : super(key: key);

   @override
   State<favoritUnlogin> createState() => _favoritUnloginState();
 }

 class _favoritUnloginState extends State<favoritUnlogin> {
   @override
   Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
     return Scaffold(
       appBar: AppBar(
         title: Row(
           children: [
             Text(
               '   Favorite',
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
               '  List',
               style: TextStyle(
                   fontSize: 16.sp,
                   fontWeight: FontWeight.w700,
                   fontFamily: 'Montserrat',
                   color: AppTheme.purpleLight),
             ),
           ],
         ),
         centerTitle: true,
         actions: [
           IconButton(
               onPressed: () => null,
               icon: Icon(Icons.favorite,color: Colors.redAccent,size: 28,)),
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
                 padding:  EdgeInsets.only(top: 12.h),
                 child: Column(
                   children: [
                     LottieBuilder.network(
                       'https://assets8.lottiefiles.com/packages/lf20_scscv3eu.json',
                       height: 280,
                       fit: BoxFit.cover,
                       reverse: true,
                       repeat: true,
                     ),
                     SizedBox(height: 20),
                     Column(
                       crossAxisAlignment:CrossAxisAlignment.center ,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('Please login to view your Favorite',style:
                         TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                         Text(' List and #GetThingsDone',style:
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
