import 'package:flutter/material.dart';
import 'package:lesson_day_30_flutter/screens/home_screen.dart';

import '../utils/auth_methods.dart';

class LoginScreeen extends StatefulWidget {
  const LoginScreeen({super.key});

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 32,
          ),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 32),
              Text(
                'Login',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  String result = await AuthMethods().loginUser(
                      email: _emailController.text,
                      password: _passwordController.text);
                  if (result == 'success') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }
                },
                child: Text('Login'),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
