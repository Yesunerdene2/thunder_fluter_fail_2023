import 'package:flutter/material.dart';
import 'package:lesson_day_27_flutter/text_field_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _phoneNumbberController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    _phoneNumbberController.dispose();
    _userController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Text(
                'iCodeGram',
                style: TextStyle(fontSize: 34),
              ),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                hintText: "Утасны дугаар",
                isPassword: false,
                controller: _phoneNumbberController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
