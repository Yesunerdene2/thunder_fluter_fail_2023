import 'package:flutter/material.dart';
import 'package:word_find_app/components/gradient_letter.dart';
import 'package:word_find_app/game.dart';
import 'package:word_find_app/start_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back1.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 177,
              height: 48.20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientLetter(letter: 'W', width: 60, height: 60, fontSize: 40, borderRadius: 8),
                GradientLetter(letter: 'O', width: 60, height: 60, fontSize: 40, borderRadius: 8),
                GradientLetter(letter: 'R', width: 60, height: 60, fontSize: 40, borderRadius: 8),
                GradientLetter(letter: 'D', width: 60, height: 60, fontSize: 40, borderRadius: 8),
              ],
            ),
            Text(
              'GAME',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 31.61,
                  fontFamily: 'Ribeye',
                  color: Color(0xFFE76A01),
                  fontWeight: FontWeight.w400,
                  height: 0),
            ),
            Center(child: Image.asset('assets/images/icodeGuy.png')),
            SizedBox(
              width: 165,
              height: 33,
            ),
            Text(
              'READY?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Ribeye',
                  color: Color(0xFFE76A01),
                  fontWeight: FontWeight.w400,
                  height: 0),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StartScreen()),
              );
            },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                child: Container(
              width: 310,
              height: 60,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x196A4423),
                    blurRadius: 100,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 310,
                      height: 60,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(1.00, 0.02),
                          end: Alignment(-1, -0.02),
                          colors: [Color(0xFFE76A01), Color(0xFFF99440)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 94.69,
                    top: 15.60,
                    child: SizedBox(
                      width: 121.75,
                      height: 28.80,
                      child: Text(
                        'PLAY',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}

