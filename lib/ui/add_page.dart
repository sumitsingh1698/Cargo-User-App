import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/decorations.dart';
import 'package:userapp/constant/strings.dart';
import 'package:userapp/constant/styles.dart';
import 'package:userapp/utils/myBorderedInputField.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String _preFeredListing = '';
  TextEditingController dateController = TextEditingController();
  DateTime preFeredDate;
  TimeOfDay preFeredTime;

  @override
  void initState() {
    dateController.text = "      /        /      ";
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
              Container(
                padding: EdgeInsets.all(15),
                color: APP_WHITE,
                child: Row(
                  children: [
                    Text(
                      ADD_REQUEST,
                      style: AppStyles.titleStyle(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),

                  decoration: AppDecoration.orderBoxDecoration(),
                  // height: 100,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        eachRowUI(ORDER_STATUS, MyBorderedInputField()),
                        eachRowUI(ORDER_STATUS, MyBorderedInputField()),
                        eachRowUI(ORDER_STATUS, MyBorderedInputField()),
                        eachRowUI(ORDER_STATUS, MyBorderedInputField()),
                        eachRowUI(CHOOSE_YOUR_PREFERED_LISTING, radioButton()),
                        eachRowUI(
                            PREFERED_DATE_TAKING_PHOTO,
                            Row(
                              children: [
                                MyBorderedInputField(
                                  width: 100,
                                  controller: dateController,
                                  onTap: showDateTimePicker,
                                ),
                                IconButton(
                                  icon: Icon(Icons.date_range),
                                  onPressed: showDateTimePicker,
                                )
                              ],
                            )),
                        eachRowUI(
                            PREFERED_TIME_TAKING_PHOTO,
                            InkWell(
                                onTap: () async {
                                  // final TimeOfDay picked = await showTimePicker(
                                  //   context: context,
                                  //   initialTime: TimeOfDay.now(),
                                  // );
                                },
                                child: MyBorderedInputField(
                                  width: 100,
                                ))),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  eachRowUI(String title, Widget widget) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.textStyle(color: APP_BLACK),
          ),
          SizedBox(
            height: 10,
          ),
          widget
        ],
      ),
    );
  }

  Widget radioButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RadioListTile(
          dense: true,
          groupValue: _preFeredListing,
          value: VIP,
          title: Text(
            VIP,
            style: AppStyles.textStyle(color: APP_BLACK),
          ),
          onChanged: _handlePreferedLising,
        ),
        RadioListTile(
          groupValue: _preFeredListing,
          value: NORMAL,
          dense: true,
          title: Text(
            NORMAL,
            style: AppStyles.textStyle(color: APP_BLACK),
          ),
          onChanged: _handlePreferedLising,
        ),
      ],
    );
  }

  _handlePreferedLising(String s) {
    setState(() {
      _preFeredListing = s;
    });
  }

  showDateTimePicker() async {
    preFeredDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 60)),
    );

    await convertDatetoString();
  }

  convertDatetoString() {
    setState(() {
      dateController.text =
          DateTimeFormat.format(preFeredDate, format: ' d / m / y ');
    });
  }

  showTimePicker() async {}
}
