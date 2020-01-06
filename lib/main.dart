import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:publicpmr_app/http_service.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';

import 'User.dart';

void main() => runApp(new MyApp());

String username = '';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PublicPMR',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF333333)),
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyHomePage(),
      },
    );
  }
}

class Choice {
  const Choice({this.title, this.icon, this.color});

  final String title;
  final IconData icon;
  final Color color;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      title: 'ТАКСИ', icon: Icons.directions_car, color: Colors.yellow),
  const Choice(
      title: 'КУРС ВАЛЮТ', icon: Icons.directions_bike, color: Colors.green),
  const Choice(
      title: 'ТЕЛЕФОНЫ', icon: Icons.directions_boat, color: Colors.red),
  const Choice(title: 'КИНО', icon: Icons.directions_bus, color: Colors.blue),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: ButtonTheme(
                minWidth: double.infinity,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromARGB(0, 0, 0, 0))),
                  onPressed: () => {},
                  color: choice.color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        choice.icon,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        size: 32,
                      ),
                      Text(choice.title)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]);
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('PublicPMR'),
          backgroundColor: Colors.black45,
        ),
        body: GridView.count(
            crossAxisCount: 1,
            padding: EdgeInsets.all(15.0),
            children: <Widget>[
              GridView.count(
                crossAxisCount: 2,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index]),
                  );
                }),
              ),
              Container(
                child: Center(
                  child: new Text('Version: 1.0.1'),
                )
              )
            ]
        )
    );
  }
}