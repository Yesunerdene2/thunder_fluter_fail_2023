import 'package:flutter/material.dart';
import 'package:word_find_app/home_screen.dart';

import 'components/gradient_letter.dart';
import 'game.dart';
import 'models/user.dart';


class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final TextEditingController _namecontroller = TextEditingController();

  String? _name;

  @override
  void dispose() {
    _namecontroller.dispose();
    super.dispose();
  }

  void _clearText() {
    _namecontroller.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          child: SizedBox(
            width: 32,
            child: Image.asset('assets/images/previous 1.png'),
          ),
        ),
        centerTitle: true,
        title: Container(
          width: 103,
          height: 41,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientLetter(
                      letter: 'W',
                      width: 22.9,
                      height: 22.9,
                      fontSize: 15,
                      borderRadius: 6),
                  GradientLetter(
                      letter: 'O',
                      width: 22.9,
                      height: 22.9,
                      fontSize: 15,
                      borderRadius: 6),
                  GradientLetter(
                      letter: 'R',
                      width: 22.9,
                      height: 22.9,
                      fontSize: 15,
                      borderRadius: 6),
                  GradientLetter(
                      letter: 'D',
                      width: 22.9,
                      height: 22.9,
                      fontSize: 15,
                      borderRadius: 6),
                ],
              ),
              Center(
                child: SizedBox(
                  child: Text(
                    "GAME",
                    style: TextStyle(
                        fontFamily: 'Ribeye',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.orange),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back2.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Padding(padding: EdgeInsets.only(top: 40)),
              Image.asset('assets/images/icodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 50)),
              SizedBox(
                child: Text(
                  'Player name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Ribeye',
                    color: Color(0xFFE76A01),
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 25)),
              SizedBox(
                width: 310,
                height: 50,
              ),
              Container(
                width: 310,
                height: 50,
                child: TextField(

                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                  controller: _namecontroller,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(25))),

                      hintText: 'Type here',
                      hintStyle: TextStyle(
                        color: Colors.orange,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: Colors.orange,
                        ),
                        onPressed: _clearText,
                      )),
                  onChanged: (value) {
                    setState(() {
                     _name = value;

                    });
                  },
                ),
              ),
              if (_name != null && _name!.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          final user = User (name:_namecontroller.text, score: 0);
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => Game(user: user),
                          ),
                          );
                          },
                        child: Text(
                          'START',
                          style: TextStyle(
                            color: Colors.white,

                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      width: 310,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xffe76a01), Color(0xfff99440)],
                          ),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
