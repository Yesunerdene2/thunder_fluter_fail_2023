import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());

}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/back1.png'
              ),
                  fit:BoxFit.cover
            ),
          ),
          child: Column(
           mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Text('Game',
                style:TextStyle(fontSize:31.61,
                 fontFamily:
                ),
                ),

              Center(
                 child: Image.asset('assets/images/icodeGuy.png')
              )
            ],
          ),
        ),
      ),
    );
  }
}

