import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_flutter/screens/home/home_screen.dart';

import '../../constants.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = '/bottom_navbar';

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color inactiveColor = Colors.grey;

    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/icon_favorite.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/icon_favorite.svg",
              color: kPrimaryColor,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/icon_user.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/icon_user.svg",
              color: kPrimaryColor,
            ),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/icon_history.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/icon_history.svg",
              color: kPrimaryColor,
            ),
            label: 'History',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: inactiveColor,
      ),
    );
  }
}
