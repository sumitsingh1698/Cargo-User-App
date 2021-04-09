import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/styles.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color bgColor;
  final Color textColor;
  MyButton({
    this.title = "",
    this.onPressed,
    this.bgColor = APP_PURPLE,
    this.textColor = APP_WHITE,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: AppDecoation.backgroundLoginPage(),
      child: MaterialButton(
        padding: EdgeInsets.all(10),
        minWidth: double.maxFinite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: this.onPressed,
        color: bgColor,
        child: Text(
          title,
          style: AppStyles.buttonTextStyle(color: textColor),
        ),
      ),
    );
  }
}
