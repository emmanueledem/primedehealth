import 'package:flutter/material.dart';

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

bool portraitDeviceMode(BuildContext context) {
  return MediaQuery.of(context).orientation == Orientation.portrait;
}

// ignore: deprecated_member_use
Size screenSize = WidgetsBinding.instance.window.physicalSize;
