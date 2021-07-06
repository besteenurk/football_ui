import 'package:flutter/material.dart';
import 'package:football_ui/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = const Color(0xFF93B8CB),
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //margin: const EdgeInsets.symmetric(vertical: 12),
      width: size.width * 0.8,
      child: ElevatedButton(
        child: Text(
          text,
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          primary: kPrimaryColor,
          shadowColor: kShadowColor,
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        onPressed: () {
          press();
        },
      ),
    );
  }
}
