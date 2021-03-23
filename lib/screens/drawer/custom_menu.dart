import 'package:flutter/material.dart';
import 'package:food_flutter/screens/drawer/drawer_screen.dart';
import 'package:food_flutter/screens/home/home_screen.dart';

class CustomMenu extends StatelessWidget {
  static const routeName = '/custom_menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
