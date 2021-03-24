import 'package:flutter/material.dart';
import 'package:food_flutter/screens/drawer/custom_menu.dart';
import 'package:food_flutter/screens/drawer/drawer_screen.dart';
import 'package:food_flutter/screens/favorite/favorite_screen.dart';
import 'package:food_flutter/screens/history/user_screen.dart';
import 'package:food_flutter/screens/home/home_screen.dart';
import 'package:food_flutter/screens/navbar/bottom_navbar.dart';
import 'package:food_flutter/screens/user/user_screen.dart';

final Map<String, WidgetBuilder> routes = {
  CustomMenu.routeName: (context) => CustomMenu(),
  DrawerScreen.routeName: (context) => DrawerScreen(),
  BottomNavBar.routeName: (context) => BottomNavBar(),
  HomeScreen.routeName: (context) => HomeScreen(),
  FavoriteScreen.routeName: (context) => FavoriteScreen(),
  UserScreen.routeName: (context) => UserScreen(),
  HistoryScreen.routeName: (context) => HistoryScreen(),
};
