import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/decorations.dart';
import 'package:userapp/constant/strings.dart';
import 'package:userapp/constant/styles.dart';
import 'package:userapp/ui/order_detail_page.dart';
import 'package:userapp/utils/myButton.dart';

class AddRequestPage extends StatefulWidget {
  @override
  _AddRequestPageState createState() => _AddRequestPageState();
}

class _AddRequestPageState extends State<AddRequestPage> {
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
              Container(
                padding: EdgeInsets.all(15),
                color: APP_WHITE,
                child: Center(
                  child: Text(
                    REQUESTS,
                    style: AppStyles.titleStyle(),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                  itemBuilder: (context, idx) {
                    return getOrderTab(idx);
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getOrderTab(int idx) {
    return Container(
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 15,
      ),
      decoration: AppDecoration.orderBoxDecoration(),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OrderDetail()));
        },
        child: ListTile(
          tileColor: APP_WHITE,
          title: Text(
            "Order ${idx + 1}",
            style: AppStyles.keyStyle(),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Table(
                defaultColumnWidth: FlexColumnWidth(10.0),
                children: [
                  TableRow(children: [
                    Text(
                      "Requested Id  ",
                      style: AppStyles.keyStyle(),
                    ),
                    Text(
                      "4333434",
                      style: AppStyles.valueStyle(),
                    ),
                    // Container(),
                  ]),
                  TableRow(children: [
                    SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      height: 2,
                    )
                  ]),
                  TableRow(children: [
                    Text(
                      "Date Requested  ",
                      style: AppStyles.keyStyle(),
                    ),
                    Text(
                      "14/09/2020",
                      style: AppStyles.valueStyle(),
                    ),
                    // Container(),
                  ])
                ],
              ),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp, color: APP_PURPLE),
        ),
      ),
    );
  }

  Widget orderDetailTab(String title, String value) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              "$title  ",
              style: AppStyles.keyStyle(),
            ),
          ),
          Expanded(
            child: Text(
              "$value",
              style: AppStyles.valueStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
