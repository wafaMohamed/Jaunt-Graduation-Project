
import 'package:flutter/material.dart';
import 'package:jaunt/view/pages/post_bottom_bar_screen.dart';
import 'package:jaunt/view/pages/post_screen.dart';

class exploreScreenLogin extends StatefulWidget {
  const exploreScreenLogin({Key? key}) : super(key: key);

  @override
  State<exploreScreenLogin> createState() => _exploreScreenLoginState();
}

class _exploreScreenLoginState extends State<exploreScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
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
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),


    );
  }
}
