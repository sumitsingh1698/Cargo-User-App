import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/decorations.dart';
import 'package:userapp/constant/strings.dart';
import 'package:userapp/constant/styles.dart';
import 'package:userapp/utils/myButton.dart';

class LRButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppDecoration.imageBackgroundDecoration(),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit,
                  size: 40.0,
                  color: APP_WHITE,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  APP_TITLE,
                  style: AppStyles.companyTitleStyle(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyButton(
                    title: LOGIN,
                    bgColor: APP_WHITE,
                    textColor: APP_PURPLE,
                    onPressed: () {
                      Navigator.pushNamed(context, LOGIN_PAGE);
                    },
                  ),
                  MyButton(
                    title: REGISTER,
                    onPressed: () {
                      Navigator.pushNamed(context, REGISTER_PAGE);
                    },
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
