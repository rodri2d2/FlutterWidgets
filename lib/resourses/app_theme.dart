import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;

  static final ThemeData light = ThemeData().copyWith(
    // Color primario para toda la app
    primaryColor: primary,

    // App bar configuracion
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    //
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
  );
}
