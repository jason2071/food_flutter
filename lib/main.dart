import 'package:flutter/material.dart';
import 'package:food_flutter/controller/menu_controller.dart';
import 'package:food_flutter/controller/user_controller.dart';
import 'package:food_flutter/routes.dart';
import 'package:food_flutter/screens/favorite/favorite_screen.dart';
import 'package:food_flutter/screens/history/history_screen.dart';
import 'package:food_flutter/screens/home/home_screen.dart';
import 'package:food_flutter/screens/main/zoom_scaffold.dart';
import 'package:food_flutter/screens/main/zoom_scaffold_menu_controller.dart';
import 'package:food_flutter/screens/menu/menu_screen.dart';
import 'package:food_flutter/screens/user/user_screen.dart';
import 'package:food_flutter/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(),
      debugShowCheckedModeBanner: false,
      home: ControlScreen(),
      routes: routes,
    );
  }
}

class ControlScreen extends StatefulWidget {
  @override
  _ControlScreenState createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen>
    with TickerProviderStateMixin {
  MenuController menuController;

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FavoriteScreen(),
    UserScreen(),
    HistoryScreen(),
  ];

  @override
  void initState() {
    super.initState();

    menuController = new MenuController(
      vsync: this,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    menuController.dispose();
    super.dispose();
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => menuController,
      child: ZoomScaffold(
        menuScreen: MenuScreen(),
        contentScreen: Layout(
          contentBuilder: (cc) {
            return Container(
              child: _widgetOptions.elementAt(_selectedIndex),
            );
          },
        ),
        currentIndex: _selectedIndex,
        press: _onItemTap,
      ),
    );
  }
}
