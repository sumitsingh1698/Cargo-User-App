import 'package:flutter/material.dart';
import 'package:userapp/constant/colors.dart';
import 'package:userapp/constant/decorations.dart';
import 'package:userapp/constant/strings.dart';
import 'package:userapp/constant/styles.dart';
import 'package:userapp/ui/homepage.dart';
import 'package:userapp/utils/MyInputField.dart';
import 'package:userapp/utils/common_utils.dart';
import 'package:userapp/utils/myButton.dart';
import 'package:userapp/utils/my_flat_button.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool phoneUi = true;
  bool isLoading = false;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppDecoration.imageBackgroundDecoration(),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.ac_unit,
                      color: APP_WHITE,
                      size: 40,
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
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(30),

                decoration: AppDecoration.backgroundLoginPage(),
                // color: APP_WHITE,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      REGISTER,
                      style: AppStyles.headTitleStyle(),
                    ),
                    Expanded(
                      child: uiForPhoneNo(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget uiForPhoneNo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyInputField(
          title: ENTER_NAME,
          controller: controller,
          keyboardType: TextInputType.phone,
          // maxLength: 10,
        ),

        SizedBox(
          height: 10,
        ),
        MyInputField(
          title: ENTER_LAST_NAME,
          controller: controller,
          keyboardType: TextInputType.phone,
          // maxLength: 10,
        ),

        SizedBox(
          height: 10,
        ),
        MyInputField(
          title: ENTER_REGISTERED_MOB,
          controller: controller,
          keyboardType: TextInputType.phone,
          // maxLength: 10,
        ),

        SizedBox(
          height: 10,
        ),
        MyInputField(
          title: ENTER_EMAIL_ID,
          controller: controller,
          keyboardType: TextInputType.phone,
          // maxLength: 10,
        ),

        // MyButton(
        //   title: GENERATE_OTP,
        //   onPressed: sendOtp,
        // ),
        SizedBox(
          height: 10,
        ),
        MyButton(
          onPressed: () {},
          title: DONE,
        ),
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }

  Widget uiForOTP() {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              MyInputField(
                title: ENTER_OTP,
                controller: controller,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                title: LOGIN,
                onPressed: login,
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  setState(() {
                    phoneUi = true;
                    controller.text = '';
                  });
                },
              )),
        ],
      ),
    );
  }

  bool phoneNoValidate(String val) {
    if (val == '') {
      CommonUtils.showToast("Enter Phone No.");
      return false;
    } else if (val.length != 10) {
      CommonUtils.showToast("Must be 10 digit");
      return false;
    }
    return true;
  }

  bool otpValidate(String val) {
    if (val == '') {
      CommonUtils.showToast("Enter OTP");
      return false;
    } else if (val.length != 6) {
      CommonUtils.showToast("Must be 6 digit");
      return false;
    }
    return true;
  }

  Future sendOtp() async {
    if (!phoneNoValidate(controller.text)) {
      return false;
    }
    // UserProvider userProvider =
    //     Provider.of<UserProvider>(context, listen: false);
    // await userProvider.sendOTP(controller.text);
    phoneUi = false;
  }

  Future login() async {
    if (!otpValidate(controller.text)) {
      return false;
    }
    // UserProvider userProvider =
    //     Provider.of<UserProvider>(context, listen: false);
    // await userProvider.verifyOTP(controller.text).then((res) {
    // if (res == true)
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => HomePage()), (_) => false);
    // });
  }

  // gotoHomePage() {
  //   Navigator.pushNamedAndRemoveUntil(context, HOME_PAGE, (_) => false);
  // }
}
