import 'package:flutter/painting.dart';
import 'package:userapp/constant/colors.dart';

class AppStyles {
  static TextStyle companyTitleStyle() {
    return new TextStyle(fontSize: 30, color: APP_WHITE);
  }

  static TextStyle buttonTextStyle({Color color = APP_WHITE}) {
    return new TextStyle(
      fontSize: 17,
      color: color,
    );
  }

  static TextStyle headTitleStyle() {
    return new TextStyle(
        fontSize: 30, color: APP_BLACK, fontWeight: FontWeight.bold);
  }

  static TextStyle textStyle({Color color = APP_GREY}) {
    return new TextStyle(fontSize: 18, color: color);
  }

  static TextStyle titleStyle() {
    return new TextStyle(
        fontSize: 22, color: APP_BLACK, fontWeight: FontWeight.bold);
  }

  //Order key style
  static TextStyle keyStyle() {
    return new TextStyle(
        fontSize: 16, color: APP_BLACK, fontWeight: FontWeight.bold);
  }

  //Order value style
  static TextStyle valueStyle({Color color = APP_BLACK}) {
    return new TextStyle(
      fontSize: 16,
      color: color,
    );
  }

  static TextStyle linkTextStyle() {
    return new TextStyle(
      fontSize: 17,
      color: APP_BLUE,
      decoration: TextDecoration.underline,
    );
  }

  static hintStyleOfBorderedInput() {
    return new TextStyle(
      fontSize: 17,
      color: APP_GREY,

      // decoration: TextDecoration.underline,
    );
  }

  static carTabTextSize() {
    return new TextStyle(
      fontSize: 13,
      color: APP_BLACK,

      // decoration: TextDecoration.underline,
    );
  }

  static carTabCarName() {
    return new TextStyle(
        fontSize: 18, color: APP_BLACK, fontWeight: FontWeight.bold

        // decoration: TextDecoration.underline,
        );
  }

  static double iconSizeOfCarTab = 10;
}
