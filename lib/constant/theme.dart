import 'package:flutter/material.dart';

class CustomeTheme
{
    // light theme
  static ThemeData lightTheme = ThemeData(
  brightness:Brightness.light,
    textTheme: _textTheme(Brightness.light),
  );

  // dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: _textTheme(Brightness.dark),
  );


  // text of theme
  static TextTheme _textTheme (Brightness brightness)
  {
    return const TextTheme(
       headlineLarge: TextStyle(
         fontSize: 24,
         fontWeight: FontWeight.bold,
         color:Brightness == Brightness.light ? Colors.black : Colors.white,
       ),
      headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Brightness== Brightness.light ? Colors.black : Colors.white,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: Brightness == Brightness.light ? Colors.black :Colors.white,
      )

    );
  }
}