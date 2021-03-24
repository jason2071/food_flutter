import 'package:flutter/material.dart';
import 'package:food_flutter/constants.dart';
import 'package:food_flutter/controller/menu_controller.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatelessWidget {
  final List<MenuItem> options = [
    MenuItem(Icons.search, 'Search'),
    MenuItem(Icons.shopping_basket, 'Basket'),
    MenuItem(Icons.favorite, 'Discounts'),
    MenuItem(Icons.code, 'Prom-codes'),
    MenuItem(Icons.format_list_bulleted, 'Orders'),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        if (details.delta.dx < -6) {
          context.read<MenuController>().toggle();
        }
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 62,
          left: 32,
          bottom: 8,
          right: MediaQuery.of(context).size.width / 2.9,
        ),
        color: kPrimaryColor,
        child: Column(
          children: <Widget>[
            Spacer(),
            Column(
              children: options.map((item) {
                return ListTile(
                  leading: Icon(
                    item.icon,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                );
              }).toList(),
            ),
            Spacer(),
            ListTile(
              onTap: () {},
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  String title;
  IconData icon;
  MenuItem(this.icon, this.title);
}
