import 'package:dtrecipe/utills/color.dart';
import 'package:flutter/material.dart';

class ThemeModel {
  final lightmode = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blueAccent,
      primarySwatch: Colors.amber,
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: primarycolor,
          onPrimary: Colors.blue,
          secondary: Colors.amber,
          onSecondary: Colors.yellow,
          error: Colors.cyan,
          onError: Colors.blue,
          background: Colors.amber,
          onBackground: Colors.amber,
          surface: Colors.white,
          onSurface: Colors.blue),
      // colorScheme: ColorScheme(
      //   primary: Colors.cyanAccent,
      //  onPrimary: Colors.blue,
      //  secondary: Colors.brown,
      //    ),
      accentColor: Colors.amber,
      // fontFamily: 'Georgia',
      textTheme: const TextTheme(
        headline6: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      ));

  final darkmode = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blueAccent,
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark ,
        primary: Colors.amber,
        onPrimary: Colors.blue,
        secondary: Colors.amber,
        onSecondary: Colors.yellow,
        error: Colors.cyan,
        onError: Colors.blue,
        background: Colors.amber,
        onBackground: Colors.amber,
        surface: Colors.white,
        onSurface: Colors.blue),
    // colorScheme: ColorScheme(
    //   primary: Colors.cyanAccent,
    //  onPrimary: Colors.blue,
    //  secondary: Colors.brown,
    //    ),
    accentColor: Colors.amber,
    fontFamily: 'Georgia',
    textTheme: const TextTheme(
      headline6: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    ),
  );
}
