import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          children: [
            Text(
              "iCodegram",
              style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
