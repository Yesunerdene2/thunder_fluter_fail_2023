import 'package:flutter/material.dart';
import 'package:lesson_day_17_flutter/navigation_page_one.dart';


class NavigationHome extends StatefulWidget {
  const NavigationHome({super.key});

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NavigationPageOne(),
              ),
            );
          },
          child: Text('Home'),
            ),



        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          'Home',
              style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
