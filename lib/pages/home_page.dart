import 'package:aula_teste/counter_controller.dart';
import 'package:aula_teste/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 0;
  CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App test"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$value",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                key: Key("btn_decrement"),
                onPressed: () {
                  setState(() {
                    value = counterController.decrement(value);
                  });
                },
                child: Text("-"),
              ),
              SizedBox(
                width: 40,
              ),
              RaisedButton(
                key: Key("btn_increment"),
                onPressed: () {
                  setState(() {
                    value = counterController.increment(value);
                  });
                },
                child: Text("+"),
              ),
            ],
          ),
          RaisedButton(
            key: Key("btn_change_page_2"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: Text("Change page"),
          ),
        ],
      ),
    );
  }
}
