import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
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
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Image.asset(
          //     "assets/images/castle.png",
          //     width: size.width * 0.3,
          //   ),
          // ),
          // Positioned(
          //   bottom: 10,
          //   left: 80,
          //   child: Image.asset(
          //     "assets/images/ball.png",
          //     width: size.width * 0.09,
          //   ),
          // ),
          child,
        ],
      ),
    );
  }
}
