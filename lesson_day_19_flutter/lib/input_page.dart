import 'package:flutter/material.dart';
import 'package:lesson_day_19_flutter/display_page.dart';

import 'models/User.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _agecontroller = TextEditingController();
String? _name;
int? _age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _namecontroller,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
              ),
              onChanged: (value){
                setState(() {
                  _name = value;
                });
              },
            ),
            TextField(
              controller: _agecontroller,
              decoration: const InputDecoration(
                labelText: 'Enter your age',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value){
                setState(() {
                  _age = int.tryParse(value);
                });
              },
            ),
            if (_name != null && _name!.isNotEmpty && _age != null)
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  final user = User (name:_name!, age:_age!);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DisplayPage(user: user),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
