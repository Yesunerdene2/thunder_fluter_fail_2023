import 'package:flutter/material.dart';
import 'package:word_find_app/components/gradient_letter.dart';

import 'models/user.dart';

class Game extends StatefulWidget {
  const Game({super.key, required this.user});
  final User user;
  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: Image.asset('assets/images/exit.png'),
                ),
              ),
            ],
          ),
        ),
        actions: [
          SizedBox(
            child: Image.asset('assets/images/trophy1.png'),
            width: 24,
            height: 24,
          ),
          Center(
            child: SizedBox(
              width: 25,
              height: 33,
              child: Text(
                "0",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/back2.png'),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 31)),
                Center(
                  child: SizedBox(
                    // width: 68,
                    // height: 33,
                    child: Text(
                      "0/10",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 16)),
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: Image.asset('assets/images/previousGray.png'),
                    ),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    Image.asset('assets/images/IMG.png'),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 16)),
                        SizedBox(
                          width: 32,
                          height: 32,
                          child: Image.asset('assets/images/next.png'),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 7)),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    GradientLetter(letter: '', width: 43, height: 43, fontSize: 0, borderRadius: 11),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    GradientLetter(letter: '', width: 43, height: 43, fontSize: 0, borderRadius: 11),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    GradientLetter(letter: '', width: 43, height: 43, fontSize: 0, borderRadius: 11),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    GradientLetter(letter: '', width: 43, height: 43, fontSize: 0, borderRadius: 11),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    GradientLetter(letter: '', width: 43, height: 43, fontSize: 0, borderRadius: 11),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    GradientLetter(letter: '', width: 43, height: 43, fontSize: 0, borderRadius: 11),
                    Padding(padding: EdgeInsets.only(right: 7)),

                    // Container(
                    //   width: 43,
                    //   height: 43,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(16),
                    //       color: Color(0xFFFF9002)),
                    //   child: Align(
                    //     alignment: Alignment.center,
                    //     child: FractionallySizedBox(
                    //       widthFactor: 2 / 3,
                    //       heightFactor: 2 / 3,
                    //       child: Container(
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(10),
                    //             gradient: LinearGradient(
                    //                 colors: [
                    //                   Color.fromARGB(25, 144, 2, 0),
                    //                   Color(0xFFE480000)
                    //                 ],
                    //                 begin: Alignment.topLeft,
                    //                 end: Alignment.bottomRight,
                    //                 stops: [-0.025, 1.16875],
                    //                 transform: GradientRotation(180))),
                    //
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
