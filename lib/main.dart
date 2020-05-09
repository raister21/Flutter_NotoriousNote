import 'package:flutter/material.dart';
import 'package:xml/xml.dart' as xml;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String notes = "assets/data/todos.xml";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            color: Color.fromRGBO(33, 33, 33, 1),
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Scaffold(
              backgroundColor: Color.fromRGBO(33, 33, 33, 1),
              appBar: AppBar(
                title: Text(
                  'NOTORIOUS NOTE',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(238, 184, 100, 1),
                      fontFamily: 'BungeeInline'),
                ),
                centerTitle: true,
                backgroundColor: Color.fromRGBO(47, 47, 47, 1),
              ),
              body: Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Divider(
                                height: 30,
                                thickness: 2,
                                color: Color.fromRGBO(151, 151, 151, 1))),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 0),
                            child: Text(
                              'To do',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromRGBO(151, 151, 151, 1)),
                            )),
                        Expanded(
                            child: Divider(
                                height: 30,
                                thickness: 2,
                                color: Color.fromRGBO(151, 151, 151, 1)))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 18),
                            color: Color.fromRGBO(47, 47, 47, 1),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 7,
                                  child: Text('Kill bill and make him feel',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      onPressed: () {
                                        print('pressed');
                                      },
                                      icon: Icon(Icons.close),
                                      color: Colors.redAccent[400],
                                      iconSize: 28,
                                    ))
                              ],
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              bottomNavigationBar: BottomAppBar(
                color: Color.fromRGBO(47, 47, 47, 1),
              ),
            )));
  }
}
