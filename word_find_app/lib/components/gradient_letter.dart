import 'package:flutter/material.dart';

class GradientLetter extends StatelessWidget {
  final String letter;
  final double width;
  final double height;
  final double fontSize;
  final double borderRadius;
  const GradientLetter({super.key, required this.letter, required this.width, required this.height, required this.fontSize,required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFFFF9002)),
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 2 / 3,
          heightFactor: 2 / 3,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(25, 144, 2, 0),
                      Color(0xFFE480000)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [-0.025, 1.16875],
                    transform: GradientRotation(180))),
            child: Center(
              child: Text(this.letter,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: fontSize ,
                  fontFamily: 'Ribeye',
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
