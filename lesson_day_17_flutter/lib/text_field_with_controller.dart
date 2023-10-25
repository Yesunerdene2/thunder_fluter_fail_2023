import 'package:flutter/material.dart';

class TextFieldTwo extends StatefulWidget {
  const TextFieldTwo({super.key});

  @override
  State<TextFieldTwo> createState() => _TextFieldTwoState();
}

class _TextFieldTwoState extends State<TextFieldTwo> {
  final TextEditingController _controller= TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void _clearText(){
    _controller.clear();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo with Clear Button'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: _clearText,
                )
              ),
              onChanged: (value){
                setState(() {

                });
              },
            ),
            SizedBox(height: 20),
            Text("Entered Text: ${_controller.text}"),
          ],
        ),
      ),
    );
  }
}
