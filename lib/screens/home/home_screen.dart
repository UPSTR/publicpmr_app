import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:publicpmr_app/providers/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {

  SharedPreferences sharedPreferences;
  String token;

  // инициализируем стейт
  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  // проверяем статус токена
  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.getString("token") == null) {
//      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => AuthScreen()), (Route<dynamic> route) => false);
    } else {
      token = sharedPreferences.getString("token");
    }
    print(token);
  }

  @override
  Widget build(BuildContext context) {
    final authData = Provider.of<Auth>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: new AppBar(
        title: new Text('PublicPMR'),
        backgroundColor: Colors.black45,

        actions: <Widget>[
          authData.token != null ?
          FlatButton(
            onPressed: () {
              Provider.of<Auth>(context, listen: false).logout();
              Navigator.pushNamed(context, '/auth');
            },
            child: Text('Выход', style: TextStyle(color: Colors.white)),
          ) :
          FlatButton(
            onPressed: () {},
            child: Text(''),
          )
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(5),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        children: List.generate(choices.length, (index) {
          return ChoiceCard(choices[index]);
        }),
//            children: <Widget>[
//              for(var item in choices ) ChoiceCard(item)
//            ]
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            authData.token != null ?
            DrawerHeader(
              child: Text('Привет, ' + authData.userId),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ) :
            DrawerHeader(
              child: Text('Вы не авторизированы'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            authData.token != null ?
            ListTile(
              title: Text('Настройки пользователя'),
              onTap: () {
              },
            ) :
            ListTile(
              title: Text('Войти'),
              onTap: () {
                Navigator.pushNamed(context, '/auth');
              },
            ),
            authData.token != null ?
            ListTile(
              title: Text('Выход'),
              onTap: () {
                Provider.of<Auth>(context, listen: false).logout();
                Navigator.pushNamed(context, '/auth');
              },
            ) :
            ListTile(
              title: Text('Зарегистрироваться'),
              onTap: () async {
                final prefs = await SharedPreferences.getInstance();
                final token = prefs.getString('token');
                print(token);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon, this.color, this.route});

  final String title;
  final IconData icon;
  final Color color;
  final String route;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'ТАКСИ', icon: Icons.directions_car, color: Colors.yellow, route: '/taxi'),
  const Choice(title: 'КУРС ВАЛЮТ', icon: Icons.directions_bike, color: Colors.green, route: '/auth'),
  const Choice(title: 'ТЕЛЕФОНЫ', icon: Icons.directions_boat, color: Colors.red, route: '/'),
  const Choice(title: 'КИНО', icon: Icons.directions_bus, color: Colors.blue, route: '/'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(this.choice);
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
                  onPressed: () {
                    Navigator.pushNamed(context, choice.route);
                  },
                  color: choice.color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          choice.icon,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          size: 42,
                        ),
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