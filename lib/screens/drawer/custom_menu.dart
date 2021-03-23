import 'package:flutter/material.dart';
import 'package:food_flutter/providers/drawer_notifer.dart';
import 'package:food_flutter/screens/detail/detail_screen.dart';
import 'package:food_flutter/screens/drawer/drawer_screen.dart';
import 'package:food_flutter/screens/home/home_screen.dart';
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
          if (drawerNotifier.currentPage == 1) DetailScreen(),
        ],
      ),
    );
  }
}
