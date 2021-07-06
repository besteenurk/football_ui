import 'package:flutter/material.dart';

import '../constant.dart';

class HaveNoAccount extends StatelessWidget {
  final Function press;
  const HaveNoAccount({Key? key, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            press();
          },
          child: const Text(
            "Üye değil misin? Üye Ol.",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
