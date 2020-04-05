import 'package:flutter/material.dart';

class GradientModel {
  Color topColor;
  Color bottomColor;
  String topColorCode;
  String bottomColorCode;

  GradientModel(
      {this.topColor,
      this.bottomColor,
      this.topColorCode,
      this.bottomColorCode});

  setTopColorAndCode({String colorCode}) {
    topColorCode = colorCode;
    topColor = hexToColor(colorCode);
  }

  setBottomColorAndCode({String colorCode}) {
    bottomColorCode = colorCode;
    bottomColor = hexToColor(colorCode);
  }

  Color getTopColor() {
    return topColor;
  }

  Color getBottomColor() {
    return bottomColor;
  }

  String getTopColorCode() {
    return topColorCode;
  }

  String getBottomColorCode() {
    return bottomColorCode;
  }
}

Color hexToColor(String hexcode) {
  hexcode = hexcode.replaceAll("#", "");
  int intColorCode = int.parse("0xff" + hexcode);
  return Color(intColorCode);
}
