import 'package:flutter/material.dart';

class TestStateScreeen extends StatefulWidget {
  const TestStateScreeen({super.key});

  @override
  State<TestStateScreeen> createState() => _TestStateScreeenState();
}

class _TestStateScreeenState extends State<TestStateScreeen> {
  String word= '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            Center(
              child: Text(this.word),
            ),
            Padding(padding: EdgeInsets.only(top:30)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
