import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/styles.dart';

class MyFlatButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color textColor;
  MyFlatButton({
    this.title = "",
    this.onPressed,
    this.textColor = APP_PURPLE,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: AppDecoation.backgroundLoginPage(),
      child: FlatButton(
        padding: EdgeInsets.all(10),
        minWidth: double.maxFinite,
        onPressed: this.onPressed,
        child: Text(
          title,
          style: AppStyles.buttonTextStyle(color: textColor),
        ),
      ),
    );
  }
}
