import 'package:flutter/material.dart';
import 'package:football_ui/screens/comment/components/background.dart';

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
            height: size.height * 0.2,
            child: const Center(
              child: Text(
                "ANKET SONUCU",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: kCommentColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
