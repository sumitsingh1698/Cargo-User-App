import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/decorations.dart';
import 'package:userapp/constant/strings.dart';
import 'package:userapp/constant/styles.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((timespame) {

    //     Navigator.pushNamedAndRemoveUntil(context, HOME_PAGE, (_) => false);
    //   } else {
    //     Navigator.pushNamedAndRemoveUntil(context, LOGIN_PAGE, (_) => false);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppDecoration.imageBackgroundDecoration(),
        child: Center(
            child: Row(
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
        )),
      ),
    );
  }
}
