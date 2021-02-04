import 'package:aula_teste/pages/third_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: RaisedButton(
            key: Key('btn_change_page_3'),
            child: Text("Page 3"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdPage()),
              );
            },
          ),
        ),
      ),
    );
  }
}
