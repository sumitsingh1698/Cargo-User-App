import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';

class MyIconButton extends StatelessWidget {
  final Widget icon;
  final Function onPressed;

  MyIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: onPressed,
      color: APP_GREY,
    );
  }
}
