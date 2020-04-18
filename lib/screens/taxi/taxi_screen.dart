import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TaxiScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Такси"),
          backgroundColor: Colors.black,
      ),
      body:
      CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
//                    color: Colors.green[100],
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),

                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: new Border.all(
                          color: Colors.white30,
                          width: 1.0,
                          style: BorderStyle.solid
                      ),
                      color: Colors.black,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('ТИРАСПОЛЬ', style: TextStyle(fontSize: 18.0, color: Colors.white)),
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:1517"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('15-17'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:53399993"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('9999-3'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:053355520"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('555-20'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:1511"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('15-11'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:1516"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('15-16'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:053350707"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('50707'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:053377707"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('77707'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:053344444"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('44444'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:053388888"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('88888'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),

                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: new Border.all(
                          color: Colors.white30,
                          width: 1.0,
                          style: BorderStyle.solid
                      ),
                      color: Colors.black,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('БЕНДЕРЫ', style: TextStyle(fontSize: 18.0, color: Colors.white)),
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:055268886"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('68886'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:055277774"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('77774'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:055277707"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('77707'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:055233333"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('33333'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:055229992"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('29992'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:055255555"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('55555'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () => launch("tel:055244444"),
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('44444'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

