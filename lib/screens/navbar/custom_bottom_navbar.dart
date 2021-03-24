import 'package:flutter/material.dart';
import 'package:food_flutter/providers/drawer_notifer.dart';
import 'package:food_flutter/screens/favorite/favorite_screen.dart';
import 'package:food_flutter/screens/history/user_screen.dart';
import 'package:food_flutter/screens/home/home_screen.dart';
import 'package:food_flutter/screens/user/user_screen.dart';
import 'package:provider/provider.dart';

import '../../size_config.dart';

class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({Key key}) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    DrawerNotifier drawerNotifier = Provider.of<DrawerNotifier>(context);

    return Container(
      height: SizeConfig.screenHeight * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(drawerNotifier.isDrawerOpen ? 40 : 0),
          bottomRight: Radius.circular(drawerNotifier.isDrawerOpen ? 40 : 0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                HomeScreen.routeName,
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                FavoriteScreen.routeName,
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                UserScreen.routeName,
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                HistoryScreen.routeName,
              );
            },
          ),
        ],
      ),
    );
  }
}
