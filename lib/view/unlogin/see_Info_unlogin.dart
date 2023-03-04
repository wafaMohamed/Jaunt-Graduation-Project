
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaunt/view/unlogin/post_bottom_unlogin.dart';
import 'package:jaunt/view/unlogin/post_unlogin.dart';

class seeInfounlogin extends StatefulWidget {
  const seeInfounlogin({Key? key}) : super(key: key);

  @override
  State<seeInfounlogin> createState() => _seeInfounloginState();
}

class _seeInfounloginState extends State<seeInfounlogin> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/city6.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: postAppBar(),
        ),
        bottomNavigationBar: postBottomBar(),
      ),


    );
  }
}
