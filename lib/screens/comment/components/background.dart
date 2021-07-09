import 'package:flutter/material.dart';
import 'package:football_ui/constant.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  const BackGround({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      height: size.height,
      width: double.infinity,
      color: kBackground,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: 130,
          //   right: -20,
          //   child: Image.asset(
          //     "assets/images/circle.png",
          //     width: size.width * 0.4,
          //     //height: size.height * 0.2,
          //   ),
          // ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/feedback.png",
              width: size.width * 0.3,
              //height: size.height * 0.2,
            ),
          ),
          Positioned(
            bottom: -70,
            right: -50,
            child: Image.asset(
              "assets/images/circle.png",
              width: size.width * 0.5,
              //height: size.height * 0.2,
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 0.0,
              ),
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Image.asset(
                  "assets/images/circle.png",
                  width: size.width,
                  //height: size.height * 0.2,
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
