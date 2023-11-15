import 'package:flutter/material.dart';

class IcodeGram extends StatelessWidget {
  const IcodeGram({super.key});

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
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
              'iCodegram',
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
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Нэвтрэх нэр",
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
                    _nameController.clear();
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
                hintText: "Hууц үг",
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
            Padding(padding: EdgeInsets.only(top: 48)),
            Padding(padding: EdgeInsets.only(left: 16)),
            Padding(padding: EdgeInsets.only(right: 16)),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                onPressed: () {},
                child: Text(
                  "Нэвтрэх",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xffe76a01), Color(0xfff99440)],
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 1,
                  width: 129,
                  child: Container(
                    color: Colors.white24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Эсвэл",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Lobster",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                  width: 129,
                  child: Container(
                    color: Colors.white24,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Шинэ хэрэглэгч үү?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  "Бүртгүүлэх",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
