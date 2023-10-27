import 'package:flutter/material.dart';


class InkwellButton extends StatefulWidget {
  const InkwellButton({super.key});

  @override
  State<InkwellButton> createState() => _InkwellButtonState();
}

class _InkwellButtonState extends State<InkwellButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inkwel Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You tapped the box!')),
                );
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Tap Me!',
                        style: TextStyle(color: Colors.white, fontSize: 20 ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
