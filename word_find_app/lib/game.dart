import 'package:flutter/material.dart';

import 'models/User.dart';

class Game extends StatefulWidget {
  const Game({super.key, required this.user});
  final User user;
  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: Image.asset('assets/images/exit.png'),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    child: Image.asset('assets/Image/trophy1.png'),
                    width: 25,
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/back2.png'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                Padding(padding: EdgeInsets.only(top:55)),
                Image.asset('assets/images/IMG.png'),
                Padding(padding: EdgeInsets.only(top: 55)),
                Container(
                  child: Text(
                    '',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
