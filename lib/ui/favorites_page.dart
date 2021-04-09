import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/decorations.dart';
import 'package:userapp/constant/strings.dart';
import 'package:userapp/constant/styles.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:userapp/utils/myBorderedInputField.dart';
import 'package:userapp/utils/my_icons_button.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  bool inList;

  @override
  void initState() {
    inList = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: APP_BACKGROUND_COLOR,
          child: Column(
            children: [
              // ADDS BLOCK
              Container(
                height: 87,
                // child: Text(
                //   ADS_SPACE,
                // ),
              ),
              getHeader(),
              Expanded(
                child: Container(
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: AppDecoration.orderBoxDecoration(
                      color: APP_BACKGROUND_COLOR),
                  // height: 100,
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: inList ? 1 : 2,
                      childAspectRatio: inList ? 3 : 0.7,
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 0.0,
                      // mainAxisSpacing = 10.0,
                    ),
                    itemBuilder: (context, index) {
                      if (inList) return eachCarHorizonTalTabUI();

                      return eachCarVerticalTabUI();
                    },
                    itemCount: 4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getHeader() {
    return Container(
      padding: EdgeInsets.all(15),
      color: APP_WHITE,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                FAVORITES,
                style: AppStyles.titleStyle(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyIconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.bars,
                        // color: APP_GREY,
                      ),
                      // icon: Icon(Icons.bars),
                      onPressed: () {
                        setState(() {
                          inList = true;
                        });
                      }),
                  MyIconButton(
                      icon: FaIcon(FontAwesomeIcons.borderAll),
                      onPressed: () {
                        setState(() {
                          inList = false;
                        });
                      }),
                  MyIconButton(
                      // icon: FaIcon(FontAwesomeIcons.borderAll),
                      icon: Icon(Icons.sort_sharp),
                      onPressed: () {
                        print("Pressed");
                      }),
                  MyIconButton(
                      icon: FaIcon(FontAwesomeIcons.sort),
                      // icon: Icon(Icons.sort_sharp),
                      onPressed: () {
                        print("Pressed");
                      })
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            // height: 100,
            // color: Colors.red,
            child: Row(
              children: [
                MyBorderedInputField(
                  width: 90,
                  colorFill: APP_LIGHT_GREY,
                  title: "By Name",
                  borderDisable: APP_WHITE,
                  borderEnable: APP_GREY,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: MyBorderedInputField(
                  colorFill: APP_LIGHT_GREY,
                  title: "Search.....",
                  borderDisable: APP_WHITE,
                  borderEnable: APP_GREY,
                  suffix: MyIconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      print("search");
                    },
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget eachCarHorizonTalTabUI() {
    return Container(
      // height: 180,
      margin: EdgeInsets.all(5),
      // color: APP_BACKGROUND_COLOR,
      // padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaPLCH0qt0OXrb0QeVNfH4C0X3tCgr_ggKCw&usqp=CAU',
                width: 110,
                height: 120,
                fit: BoxFit.cover),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "BMW 3 Series",
                style: AppStyles.carTabCarName(),
              ),
              iconAndTextRow(
                  FaIcon(
                    FontAwesomeIcons.calendarAlt,
                    color: Theme.of(context).primaryColor,
                    size: 17,
                  ),
                  "2019"),
              iconAndTextRow(
                  FaIcon(
                    FontAwesomeIcons.calculator,
                    color: Theme.of(context).primaryColor,
                    size: 17,
                  ),
                  "Automatic"),
              iconAndTextRow(
                  FaIcon(
                    FontAwesomeIcons.tenge,
                    color: Theme.of(context).primaryColor,
                    size: 17,
                  ),
                  " 12"),
              iconAndTextRow(
                  FaIcon(
                    FontAwesomeIcons.tachometerAlt,
                    color: Theme.of(context).primaryColor,
                    size: 17,
                  ),
                  "22,150 KM"),
              iconAndTextRow(
                  Icon(
                    Icons.call,
                    color: Theme.of(context).primaryColor,
                    size: 17,
                  ),
                  "+545423692"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Expanded(
              //   child: Container(),
              // ),
              SizedBox(
                height: 80,
              ),
              Text(
                "500.000 QR ",
                style: AppStyles.carTabCarName(),
              ),
            ],
          )
        ],
      ),

      decoration: AppDecoration.orderBoxDecoration(),
    );
  }

  Widget eachCarVerticalTabUI() {
    return Container(
      // height: 180,
      margin: EdgeInsets.all(5),
      // color: APP_BACKGROUND_COLOR,
      // padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaPLCH0qt0OXrb0QeVNfH4C0X3tCgr_ggKCw&usqp=CAU',
                // width: 110,
                // height: 120,
                fit: BoxFit.cover),
          ),
          Text(
            "BMW 3 Series",
            style: AppStyles.carTabCarName(),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    iconAndTextRow(
                        FaIcon(
                          FontAwesomeIcons.calendarAlt,
                          color: Theme.of(context).primaryColor,
                          size: 17,
                        ),
                        "2019"),
                    iconAndTextRow(
                        FaIcon(
                          FontAwesomeIcons.calculator,
                          color: Theme.of(context).primaryColor,
                          size: 17,
                        ),
                        "Automatic"),
                    iconAndTextRow(
                        FaIcon(
                          FontAwesomeIcons.tenge,
                          color: Theme.of(context).primaryColor,
                          size: 17,
                        ),
                        " 12"),
                    iconAndTextRow(
                        FaIcon(
                          FontAwesomeIcons.tachometerAlt,
                          color: Theme.of(context).primaryColor,
                          size: 17,
                        ),
                        "22,150 KM"),
                    iconAndTextRow(
                        Icon(
                          Icons.call,
                          color: Theme.of(context).primaryColor,
                          size: 17,
                        ),
                        "+545423692"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "500.000 QR ",
            style: AppStyles.carTabCarName(),
          ),
        ],
      ),

      decoration: AppDecoration.orderBoxDecoration(),
    );
  }

  Widget iconAndTextRow(Widget icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: AppStyles.carTabTextSize(),
        )
      ],
    );
  }
}
