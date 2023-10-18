import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
                Container(
                  width: 60,
                  height: 60,
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
                            borderRadius: BorderRadius.circular(8),
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
                          child: Text('W',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                  fontSize: 40)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
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
                            borderRadius: BorderRadius.circular(8),
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
                          child: Text('O',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                  fontSize: 40)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
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
                            borderRadius: BorderRadius.circular(8),
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
                          child: Text('R'
                              ,
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                  fontSize: 40)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
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
                            borderRadius: BorderRadius.circular(8),
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
                          child: Text('D',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                  fontSize: 40)),
                        ),
                      ),
                    ),
                  ),
                ),
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
            Center(child: Image.asset('assets/images/icodeGuyHead.png')),
            SizedBox(
              width: 165,
              height: 33,
            ),
            Text(
              'Player name',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Ribeye',
                  color: Color(0xFFE76A01),
                  fontWeight: FontWeight.w400,
                  height: 0),
            ),
            ElevatedButton(onPressed: (){},
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

