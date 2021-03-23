import 'package:flutter/material.dart';
import 'package:food_flutter/providers/drawer_notifer.dart';
import 'package:food_flutter/screens/home/home_screen.dart';
import 'package:food_flutter/screens/order/order_screen.dart';
import 'package:food_flutter/screens/drawer/drawer_screen.dart';
import 'package:food_flutter/screens/profile/profile_screen.dart';
import 'package:provider/provider.dart';

class CustomMenu extends StatelessWidget {
  static const routeName = '/custom_menu';

  @override
  Widget build(BuildContext context) {
    DrawerNotifier drawerNotifier = Provider.of<DrawerNotifier>(context);

    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          if (drawerNotifier.currentPage == 0) HomeScreen(),
          if (drawerNotifier.currentPage == 1) ProfileScreen(),
          if (drawerNotifier.currentPage == 2) OrderScreen(),
          if (drawerNotifier.currentPage == 3) Container(),
          if (drawerNotifier.currentPage == 4) Container(),
          if (drawerNotifier.currentPage == 5) Container(),
          if (drawerNotifier.currentPage == 6) Container(),
        ],
      ),
    );
  }
}
