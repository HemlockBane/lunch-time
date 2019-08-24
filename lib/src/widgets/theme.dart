import 'package:flutter/material.dart';

class AppTheme{
  static Color orangyPeach = Color(0xffffd3b0);
  static Color peach = Color(0xffffcbb6);
  static Color greyText = Color(0xffB2BCC6);

  ThemeData getDefaultAppTheme() {
    final ThemeData baseTheme = ThemeData.light();

    return baseTheme.copyWith(

    );

  }
}