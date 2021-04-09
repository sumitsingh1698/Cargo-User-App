import 'package:flutter/material.dart';
import 'package:userapp/constant/strings.dart';
import 'package:userapp/ui/account_ui/login_page.dart';
import 'package:userapp/ui/account_ui/register_page.dart';
import 'package:userapp/ui/extra_page/l_r_button_page.dart';
import 'package:userapp/ui/extra_page/splash_page.dart';
import 'package:userapp/ui/homepage.dart';
import 'package:userapp/utils/create_material_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cargo User App',
      theme: ThemeData(
        primarySwatch: createMaterialColor(Color(0xff6029de)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HOME_PAGE,
      routes: <String, WidgetBuilder>{
        SPLASH_PAGE: (context) => SplashPage(),
        R_L_BUTTON_PAGE: (context) => LRButtonPage(),
        LOGIN_PAGE: (context) => LoginPage(),
        REGISTER_PAGE: (context) => RegisterPage(),
        HOME_PAGE: (context) => HomePage(),
      },
      // home: ,
    );
  }
}
