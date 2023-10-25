import 'package:flutter/material.dart';

import 'navigation_page_one.dart';


class NavigationPageTwo extends StatefulWidget {
  const NavigationPageTwo({super.key});

  @override
  State<NavigationPageTwo> createState() => _NavigationPageTwoState();
}

class _NavigationPageTwoState extends State<NavigationPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageTwo'),
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NavigationPageOne(),
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
                  builder: (context) => const NavigationPageOne(),
                ),
              );
            }, child: Text("Back to Page one")),
          ],
        ),
      ),
    );
  }
}
