import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:publicpmr_app/bodegaPage.dart';
import 'package:publicpmr_app/powerPage.dart';

void main() => runApp(new MyApp());

String username = '';
String token = '';
List litems = [];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login PHP My Admin',
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/powerPage': (BuildContext context) => new SuperV(
              username: username,
            ),
        '/bodegaPage': (BuildContext context) => new BodegaPage(
              username: username,
            ),
        '/MyHomePage': (BuildContext context) => new MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  String msg = '';

  Future<String> _login() async {
    Map data = {"password": user.text, "username": pass.text};

    var url = 'https://publicpmr.herokuapp.com/api/authenticate';
    final response = await http.post(url, body: json.encode(data), headers: {
      "accept": "application/json",
      "content-type": "application/json"
    }).then((response) {
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      token = json.decode(response.body)['id_token'];
      print(json.decode(response.body)['id_token']);
    });

    print(user.text);
    print(pass.text);
    print(response);

    msg = "Login success";

    return "Login success";
  }

  Future<String> _taxi() async {
    var url = 'https://publicpmr.herokuapp.com/api/taxis';
    final response = await http.get(url, headers: {
      "accept": "application/json",
      "content-type": "application/json",
      "Authorization": "Bearer $token"
    }).then((response) {
      print("Bearer $token");
      print(litems);
    });

    return "Taxi success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Username",
                style: TextStyle(fontSize: 18.0),
              ),
              TextField(
                controller: user,
                decoration: InputDecoration(hintText: 'Username'),
              ),
              Text(
                "Password",
                style: TextStyle(fontSize: 18.0),
              ),
              TextField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              RaisedButton(
                child: Text("Login"),
                onPressed: () {
                  _login();
//                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                child: Text("Taxi"),
                onPressed: () {
                  _taxi();
//                  Navigator.pop(context);
                },
              ),
              Text(
                msg,
                style: TextStyle(fontSize: 20.0, color: Colors.red),
              ),
              RaisedButton(
                child: Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BodegaPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}
