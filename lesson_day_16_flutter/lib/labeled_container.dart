import 'package:flutter/material.dart';

class LabeledContainer extends StatelessWidget {
  final double? width;
  final double? heigth;
  final Color color;
  final String text;
  final Color? textcolor;

  const LabeledContainer(
      {super.key,
      this.width,
      this.heigth = double.infinity,
      required this.color, this.textcolor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.heigth,
      color: this.color,
      alignment: Alignment.center,
      child: Text(
        this.text,
        style: TextStyle(color: this.textcolor, fontSize: 30),
      ),
    );
  }
}
