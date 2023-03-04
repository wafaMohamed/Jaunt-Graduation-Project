import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaunt/view/unlogin/booking_unlogin.dart';
import 'package:jaunt/view/unlogin/explore_unlogin.dart';
import 'package:jaunt/view/unlogin/home_unlogin.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../../utilities/themes/apptheme.dart';

class unloginLayoutBottomNavigation extends StatefulWidget {
  const unloginLayoutBottomNavigation({Key? key}) : super(key: key);

  @override
  State<unloginLayoutBottomNavigation> createState() => _unloginLayoutBottomNavigationState();
}

class _unloginLayoutBottomNavigationState extends State<unloginLayoutBottomNavigation> {
  int currentIndex = 0;
  List<Widget> screensBottomUnlogin = [
    unloginHomePageScreen(),
    unloginExploreScreen(),
    unloginBookingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensBottomUnlogin[currentIndex] ,
      bottomNavigationBar:

      Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(blurRadius: 180, spreadRadius: 2, color: AppTheme.purpleLight),
        ]),
        child: BottomNavigationBar(

          selectedItemColor: Color(0xff4229bc),
          backgroundColor: AppTheme.purplewight,
          currentIndex: currentIndex,
          onTap: (int newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Color(0xff9661c9),
              ),
              backgroundColor: AppTheme.purplewight,

            ),
            BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(
                Icons.explore,
                color: Color(0xff9661c9),
              ),
              backgroundColor: AppTheme.purplewight,

            ),
            BottomNavigationBarItem(
              label: 'Booking',
              icon: Icon(
                FluentSystemIcons.ic_fluent_ticket_filled,
                color: Color(0xff9661c9),
              ),
              backgroundColor: AppTheme.purplewight,

            ),

          ],
        ),
      ),
    );
  }
}
