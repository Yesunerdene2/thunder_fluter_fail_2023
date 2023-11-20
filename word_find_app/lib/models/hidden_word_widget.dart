import 'package:flutter/material.dart';

class HiddenWidget extends StatelessWidget {
  final String letter;
  final double height;
  final double width;
  const HiddenWidget(this.letter, this.height, this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xFFFF9002)),
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 2/3,
          heightFactor: 2/3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 144, 2, 0),
                  Color(0xFF48000),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                stops: [-0.025, 1.6876],
                transform: GradientRotation(180),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              letter,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily:'Ribeye',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),

      // child: Text(
      //   letter,
      //   style: const TextStyle(
      //     color: Colors.blueAccent,
      //   ),
      // ),
    );
  }
}
