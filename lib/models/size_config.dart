import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    orientation = _mediaQueryData.orientation;
    screenWidth = _mediaQueryData.size.width;
    if (orientation == Orientation.landscape) {
      screenWidth = _mediaQueryData.size.height;
    }
    screenHeight = screenWidth * (640 / 360);
    // screenHeight = _mediaQueryData.size.height;
    print('$screenWidth / $screenHeight / $orientation');
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 640.0) * screenHeight;
  // return (inputHeight / 640.0) * screenHeight * 0.88;
}

double getProportionateTextHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 640.0) * screenHeight * 0.96 * 0.95;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 360.0) * screenWidth;
}
