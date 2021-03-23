import 'package:flutter/material.dart';
import 'package:food_flutter/providers/drawer_notifer.dart';
import 'package:food_flutter/routes.dart';
import 'package:provider/provider.dart';

import 'screens/drawer/custom_menu.dart';
import 'theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DrawerNotifier()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(),
      debugShowCheckedModeBanner: false,
      home: CustomMenu(),
      routes: routes,
    );
  }
}
