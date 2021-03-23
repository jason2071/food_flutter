import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData buildTheme() {
  return ThemeData(
    fontFamily: "Kodchasan",
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBackgroundColor,
    appBarTheme: buildAppBarTheme(),
  );
}

AppBarTheme buildAppBarTheme() {
  return AppBarTheme(
    elevation: 0,
    centerTitle: true,
    brightness: Brightness.light,
    backgroundColor: kBackgroundColor,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
