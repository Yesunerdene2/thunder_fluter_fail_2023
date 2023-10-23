import 'package:flutter/material.dart';

import 'components/gradient_letter.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: TextButton(
          onPressed: (){},
          child: SizedBox(
            width: 32,
            child: Image.asset('assets/images/previous 1.png'),
          ),
        ),
        centerTitle: true,
        title: Container(

          child:  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientLetter(letter: 'W', width: 22.9, height: 22.9, fontSize: 15, borderRadius: 6),
                  GradientLetter(letter: 'O', width: 22.9, height: 22.9, fontSize: 15, borderRadius: 6),
                  GradientLetter(letter: 'R', width: 22.9, height: 22.9, fontSize: 15, borderRadius: 6),
                  GradientLetter(letter: 'D', width: 22.9, height: 22.9, fontSize: 15, borderRadius: 6),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 135,

                  ),
                  Text("GAME",
                  style: TextStyle(
                    fontFamily: 'Ribeye',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.orange

                  ),),

                ],
              ),
              ],
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back2.png'), fit: BoxFit.cover),

        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Padding(padding: EdgeInsets.only(top:40)),
            Image.asset('assets/images/icodeGuyHead.png'),
            Padding(padding: EdgeInsets.only(top:50)),
          ],
        ),
      ),

    );

  }
}
