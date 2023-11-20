import 'package:flutter/material.dart';

class GradientLetterWidget extends StatelessWidget {
  final double width;
  final double height;
  final int Tooshirheg;
  final double spaceBetween;
  final double gadna, dotor;
  final String letter;

  const GradientLetterWidget(this.width, this.height, this.Tooshirheg, this.dotor,
      this.gadna, this.spaceBetween, this.letter,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: this.width,
        height: this.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(gadna),
            color: Color(0xFFFF9002)),
        child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 2 / 3,
            heightFactor: 2 / 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(dotor),
                  gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 144, 2, 0),
                        Color(0xFFE48000)
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      stops: [-0.025, 1.6875],
                      transform: GradientRotation(180))),
              alignment: Alignment.center,
              child: Text(
                letter,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Ribeye',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
