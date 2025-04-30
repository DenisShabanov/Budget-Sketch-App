import 'package:flutter/material.dart';

final theme = ThemeData(
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
  ),
  scaffoldBackgroundColor: Color.fromARGB(255, 249, 250, 251),
  textTheme: TextTheme(
    labelLarge: TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.w700,
      fontFamily: 'Ubuntu',
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Ubuntu',
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      fontFamily: 'Ubuntu',
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      fontFamily: 'Ubuntu',
    ),
  ),
);
