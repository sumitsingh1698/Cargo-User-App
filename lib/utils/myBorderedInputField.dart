import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/styles.dart';

class MyBorderedInputField extends StatelessWidget {
  TextEditingController controller;
  String title;
  TextInputType keyboardType;
  int maxLength;
  double width;
  int minLine;
  Function onTap;
  Color colorFill;
  Color borderEnable;
  Color borderDisable;
  Widget suffix;
  MyBorderedInputField(
      {this.controller,
      this.title = '',
      this.keyboardType = TextInputType.text,
      this.maxLength,
      this.minLine = 1,
      this.width = double.maxFinite,
      this.onTap,
      this.colorFill = APP_WHITE,
      this.borderDisable = APP_GREY,
      this.borderEnable = APP_PURPLE,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextField(
        onTap: onTap,
        controller: controller,
        keyboardType: keyboardType,
        maxLength: maxLength,
        minLines: minLine,

        maxLines: minLine,
        cursorColor: APP_GREY,

        style: AppStyles.hintStyleOfBorderedInput(),
        // focusNode: focusNode,
        decoration: InputDecoration(
            hintText: "$title",
            hintStyle: AppStyles.hintStyleOfBorderedInput(),
            filled: true,
            contentPadding: EdgeInsets.only(left: 7),
            fillColor: colorFill,
            // counterStyle: TextStyle(color: Colors.red),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: borderEnable,
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderDisable, width: 2.0),
            ),
            suffixIcon: suffix),

        // keyboardType: keyboardType,
        // maxLines: maxLine,
        // onChanged: (val) {
        //   submitVal(val);
        // },
        // style: TextStyle(color: APP_BLACK, fontSize: 9.0.sp),
      ),
    );
  }
}
