import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:io' show Platform;

import 'package:food_flutter/providers/drawer_notifer.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DrawerNotifier drawerNotifier = Provider.of<DrawerNotifier>(context);

    return AnimatedContainer(
      transform: Matrix4.translationValues(
          drawerNotifier.xOffset, drawerNotifier.yOffset, 0)
        ..scale(drawerNotifier.scaleFactor)
        ..rotateY(drawerNotifier.isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius:
            BorderRadius.circular(drawerNotifier.isDrawerOpen ? 40 : 0),
      ),
      child: Column(
        children: [
          SizedBox(height: kToolbarHeight - (Platform.isIOS ? 0 : 30)),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                  child: IconButton(
                    icon: SvgPicture.asset(drawerNotifier.isDrawerOpen
                        ? "assets/icons/chevron-left.svg"
                        : "assets/icons/icon_menu.svg"),
                    onPressed: () {
                      if (drawerNotifier.isDrawerOpen) {
                        setState(() {
                          drawerNotifier.setDrawer(false);
                        });
                      } else {
                        drawerNotifier.setDrawer(true);
                      }
                    },
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                    width: 50,
                    child: IconButton(
                      icon: SvgPicture.asset("assets/icons/icon_search.svg"),
                      onPressed: () {},
                    )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Home"),
                Text("Home"),
                Text("Home"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
