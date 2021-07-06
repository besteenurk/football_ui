import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:football_ui/components/forgot_password.dart';
import 'package:football_ui/components/have_no_account.dart';
import 'package:football_ui/components/rounde_button.dart';
import 'package:football_ui/components/rounded_input_field.dart';
import 'package:football_ui/components/rounded_password_field.dart';
import 'package:football_ui/screens/login/components/background.dart';

import '../../../constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: size.height * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(29),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 20,
                  color: kPrimaryColor.withOpacity(0.4),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "GİRİŞ YAP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                      fontSize: 30),
                ),
                SizedBox(height: size.height * 0.09),
                SvgPicture.asset(
                  "assets/icons/soccer.svg",
                  height: size.height * 0.30,
                  width: size.width * 0.90,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                RoundedInputField(
                  hintText: "Email",
                  onChanged: (value) {},
                ),
                SizedBox(height: size.height * 0.001),
                RoundedPasswordField(onChanged: (value) {}),
                SizedBox(height: size.height * 0.02),
                RoundedButton(text: 'GİRİŞ YAP', press: () {}),
                SizedBox(height: size.height * 0.02),
                ForgotPassword(press: () {}, login: true),
                SizedBox(height: size.height * 0.02),
                HaveNoAccount(press: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
