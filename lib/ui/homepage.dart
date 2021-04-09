import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/strings.dart';
import 'package:userapp/ui/account_ui/login_page.dart';
import 'package:userapp/ui/account_ui/register_page.dart';
import 'package:userapp/ui/add_page.dart';
import 'package:userapp/ui/cars_page.dart';
import 'package:userapp/ui/extra_page/splash_page.dart';
import 'package:userapp/ui/favorites_page.dart';
import 'package:userapp/ui/profile_page.dart';
import 'package:userapp/ui/request_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PersistentTabController _controller;
  // bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 1);
    // _hideNavBar = false;
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: [
        CarsPage(),
        FavoritesPage(),
        AddPage(),
        AddRequestPage(),
        ProfilePage()
      ],
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
          ? 0.0
          : kBottomNavigationBarHeight,
      hideNavigationBarWhenKeyboardShows: true,
      // margin: EdgeInsets.all(10.0),
      popActionScreens: PopActionScreensType.once,
      bottomScreenMargin: 56.0,

      // selectedTabScreenContext: (context) {
      //   testContext = context;
      // },
      // hideNavigationBar: _hideNavBar,

      decoration: NavBarDecoration(
          colorBehindNavBar: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(0.0)),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: CARS,
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: APP_GREY,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite_outline),
        title: (FAVORITES),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: APP_GREY,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.add,
          color: APP_WHITE,
        ),
        title: (ADD),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: APP_GREY,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.history),
        title: (REQUESTS),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: APP_GREY,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_circle_outlined),
        title: (PROFILE),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: APP_GREY,
      ),
    ];
  }
}
