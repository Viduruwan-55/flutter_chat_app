import 'package:flutter/material.dart';

class CustomedNavigation {
  static void nextScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
