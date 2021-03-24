import 'package:flutter/material.dart';
import 'package:food_flutter/controller/menu_controller.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  static const routeName = '/history';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            context.read<MenuController>().toggle();
          },
        ),
      ),
      body: Container(
        child: Text("History"),
      ),
    );
  }
}
