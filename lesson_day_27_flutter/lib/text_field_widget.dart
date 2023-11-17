import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Username',
        hintText: 'Enter your name',
      ),
      keyboardType: TextInputType.text,
      onChanged: (value) {
        print('User name: $value');
      },
    );
  }
}
