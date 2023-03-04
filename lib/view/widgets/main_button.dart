
import 'package:flutter/material.dart';

import 'default_text.dart';

class MainButton extends StatelessWidget{
  final VoidCallback Onpressed;
  final String text;
  final double Height;
 const MainButton({Key ?key , required this.Onpressed,
   required this.text,
   required this.Height
 });

  @override
  Widget build(BuildContext context) {
   return SizedBox(
     height: Height,
     width: 100,
     child: ElevatedButton(
         onPressed: Onpressed,
         child: DefaultText(text: text,),

         ),
   );
  }





}