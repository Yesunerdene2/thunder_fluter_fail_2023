import 'package:flutter/material.dart';
import '';
import 'home_screen.dart';

Future<void> exitDialog(BuildContext context){
  return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AlertDialog(
                content: SizedBox(
                  width: 234,
                  height: 115,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                          ),
                          Image.asset('assets/images/orange.png'),
                          Padding(padding: EdgeInsets.only(left: 80)),
                          SizedBox(
                            height: 25,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.all(0),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset('assets/images/exit.png'),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'ARE YOU SURE TO OUT',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontFamily: 'Ribeye',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 130,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.orange,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                                },
                                icon: Text(
                                  'YES',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              width: 134,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.orange,
                              ),
                              child: IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Text(
                                  'NO',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

