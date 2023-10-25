import 'package:flutter/material.dart';
import 'package:lesson_day_17_flutter/navigation.dart';
import 'package:lesson_day_17_flutter/navigation_page_two.dart';


class NavigationPageOne extends StatefulWidget {
  const NavigationPageOne({super.key});

  @override
  State<NavigationPageOne> createState() => _NavigationPageOneState();
}

class _NavigationPageOneState extends State<NavigationPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageOne'),
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NavigationHome(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigationPageTwo(),
                ),
              );
            }, child: Text("Go to Page Two")),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigationHome(),
                ),
              );
            }, child: Text("Go to Home Page")),
          ],
        ),
      ),
    );
  }
}
