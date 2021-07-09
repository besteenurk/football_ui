import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:football_ui/components/rounde_button.dart';
import 'package:football_ui/constant.dart';
import 'package:football_ui/screens/login/login_screen.dart';
import 'package:football_ui/screens/comment/comment_screen.dart';
import 'package:football_ui/screens/welcome/component/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
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
                  "UYGULAMA ADI",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                      fontSize: 30),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                SvgPicture.asset(
                  "assets/icons/goal.svg",
                  height: size.height * 0.30,
                  width: size.width * 0.90,
                ),
                SizedBox(
                  height: size.height * 0.09,
                ),
                RoundedButton(
                  text: "GİRİŞ YAP",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }),
                    );
                  },
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                RoundedButton(
                    text: "KAYIT OL",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const CommentScreen();
                        }),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
