import 'package:flutter/material.dart';

TextTheme textTheme() {
  return TextTheme(
      headline1: TextStyle(
          fontFamily: 'NanumSquare_acL', fontSize: 18.0, color: Colors.black),
      headline2: TextStyle(
          fontFamily: 'NanumSquare_acL',
          fontSize: 18.0,
          color: Colors.black,
          fontWeight: FontWeight.bold),
      bodyText1: TextStyle(
          fontFamily: 'NanumSquare_acL', fontSize: 16.0, color: Colors.black),
      bodyText2: TextStyle(
          fontFamily: 'NanumSquare_acL', fontSize: 14.0, color: Colors.black),
      subtitle1: TextStyle(
          fontFamily: 'NanumSquare_acL', fontSize: 15.0, color: Colors.black));
}

AppBarTheme appTheme() {
  return const AppBarTheme(
      centerTitle: true,
      color: Colors.white,
      elevation: 0.0,
      textTheme: TextTheme(
          headline6: TextStyle(
              fontFamily: 'NanumSquare_acL',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black)));
}

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: textTheme(),
      appBarTheme: appTheme(),
      primaryColor: Colors.orange);
}
