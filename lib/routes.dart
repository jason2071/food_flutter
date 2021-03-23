import 'package:flutter/material.dart';
import 'package:food_flutter/screens/drawer/custom_menu.dart';
import 'package:food_flutter/screens/drawer/drawer_screen.dart';
import 'package:food_flutter/screens/home/home_screen.dart';
import 'package:food_flutter/screens/navbar/bottom_navbar.dart';

final Map<String, WidgetBuilder> routes = {
  CustomMenu.routeName: (context) => CustomMenu(),
  DrawerScreen.routeName: (context) => DrawerScreen(),
  BottomNavBar.routeName: (context) => BottomNavBar(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
