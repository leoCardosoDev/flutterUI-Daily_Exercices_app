import 'package:flutter/material.dart';
import 'bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
     height: 80,
     color: Colors.white,
     child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
       BottomNavItem(
        svgSrc: 'assets/icons/calendar.svg',
        title: 'Hoje',
        press: () {},
        isActive: true,
       ),
       BottomNavItem(
        svgSrc: 'assets/icons/gym.svg',
        title: 'Treinos',
        press: () {},
       ),
       BottomNavItem(
        svgSrc: 'assets/icons/Settings.svg',
        title: 'Settings',
        press: () {},
       ),
      ],
     ),
    );
  }
}
