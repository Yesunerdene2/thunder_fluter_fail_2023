import 'package:flutter/material.dart';

class GramHome extends StatelessWidget {
  const GramHome({super.key});

  @override
  Widget build(BuildContext context) {
    final _numberController = TextEditingController();
    final _peopleController = TextEditingController();
    final _passController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'iCodeGram',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 35,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 52)),
            Padding(padding: EdgeInsets.only(left: 15)),
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _numberController,
              decoration: InputDecoration(
                hintText: "Утасны дугаар",
                hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Color(0xFFA0A0A0)), //<-- SEE HERE
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _numberController.clear();
                  },
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 15)),
            Padding(padding: EdgeInsets.only(top: 16)),
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _peopleController,
              decoration: InputDecoration(
                hintText: "Хэрэглэгчийн нэр",
                hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Color(0xFFA0A0A0)), //<-- SEE HERE
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _peopleController.clear();
                  },
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 15)),
            Padding(padding: EdgeInsets.only(top: 16)),
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _passController,
              decoration: InputDecoration(
                hintText: "Нууц үг",
                hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Color(0xFFA0A0A0)), //<-- SEE HERE
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _passController.clear();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
