import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaunt/view/pages/booking_screen.dart';
import 'package:jaunt/view/pages/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../../utilities/themes/apptheme.dart';
import 'explore_layout.dart';

class layoutBottomNavigation extends StatefulWidget {
  const layoutBottomNavigation({Key? key}) : super(key: key);

  @override
  State<layoutBottomNavigation> createState() => _layoutBottomNavigationState();
}

class _layoutBottomNavigationState extends State<layoutBottomNavigation> {
  int currentIndex = 0;
  static final List<Widget> screensBottom = <Widget>[
    HomePageScreen(),
    exploreLayout(),
    bookingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensBottom[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 180, spreadRadius: 2, color: AppTheme.purpleLight),
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
