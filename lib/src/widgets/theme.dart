import 'package:flutter/material.dart';

class AppTheme{
  static Color orangyPeach = Color(0xffffd3b0);
  static Color peach = Color(0xffffcbb6);
  static Color peachButton = Color(0xffe59186);
  static Color mainText = Color(0xff414b6b); // Main text color
  static Color greySubText  = Color(0xff90a4b7);
  static Color greyHintText = Color(0xff93a6b9); //

  ThemeData getDefaultAppTheme() {
    final ThemeData baseTheme = ThemeData.light();

    return baseTheme.copyWith(

    );

  }
}