import 'package:flutter/material.dart';

void main() {
  runApp(Main02());
}

class Main01 extends StatelessWidget {
  const Main01({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Point extends StatelessWidget{
  double x;
  double y;
  Point({required this.x,required this.y});


  @override
Widget build(BuildContext context){
    return Container();
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Themed MaterialApp',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Scaffold(
        body:Container(
          child:Center(child: Text('Main 01 - Example -1')),
        )
      )
    );
  }
}
class Main02 extends StatelessWidget {
  const Main02({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'ComicNeue-Regular',
      ),
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text(
              'Custom Font',
              style: TextStyle(fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200
              ),

            ),
          ),
        ),
      ),
    );
  }
}

