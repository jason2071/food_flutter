import 'package:flutter/material.dart';
import 'package:food_flutter/controller/menu_controller.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            context.read<MenuController>().toggle();
          },
        ),
      ),
      body: Container(
        child: Text("Profile"),
      ),
    );
  }
}
