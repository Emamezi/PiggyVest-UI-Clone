import 'dart:ui';

import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle kAccountHeadingtextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      backgroundColor: isDarkTheme ? Colors.black : Colors.white,
      primaryColor: isDarkTheme ? Colors.blue.shade800 : Colors.blue.shade800,
      accentColor: isDarkTheme ? Color(0xff8633d8) : Color(0xff8633d8),
      buttonColor: isDarkTheme ? Color(0xff8633d8) : Colors.white,
      iconTheme: IconThemeData(color: isDarkTheme ? Colors.grey : Colors.grey),
      cardColor: isDarkTheme ? Color(0xff1c1d1f) : Colors.white,
      indicatorColor: isDarkTheme ? Colors.blue.shade800 : Colors.blue.shade800,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      // toggleButtonsTheme: ToggleButtonsThemeData(

      // )
    );
  }
}
