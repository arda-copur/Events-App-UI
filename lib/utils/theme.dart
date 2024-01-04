import 'package:flutter/material.dart';

class ProjectTheme {
  static Color lightPrimary = const Color(0xfffcfcff);
  static Color darkPrimary = const Color.fromARGB(255, 8, 8, 8);
  static Color lightAccent = const Color.fromARGB(255, 54, 125, 161);
  static Color whiteAccent = Colors.white;
  static Color lightBG = const Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;

 static ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: darkPrimary,
  primaryColor: lightPrimary,
  appBarTheme: AppBarTheme(backgroundColor: ProjectTheme.darkPrimary),
  textTheme:  TextTheme(bodyMedium: TextStyle(color: ProjectTheme.whiteAccent))
 

 );

static ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: darkBG,
  primaryColor: darkPrimary,

);
}