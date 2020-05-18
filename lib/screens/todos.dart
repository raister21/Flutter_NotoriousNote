import 'package:flutter/material.dart';
import 'note.dart';
import '../readWrite/store.dart';

class ToDos extends StatefulWidget {

  final Store storage = Store();

  @override
  _ToDosState createState() => _ToDosState();
}

class _ToDosState extends State<ToDos> {

  String readFile;

  storage

  List<Note> notes = [
    Note('hello'),
    Note('Wolrd'),
    Note('Mandip'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            body: Container(
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
                color: Colors.amberAccent[200],
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
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
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
                padding: EdgeInsets.fromLTRB(0, 30, 0, 25),
                child: Column(
                    children: notes
                        .map((note) => Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 18),
                              margin: (EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 0)),
                              color: Color.fromRGBO(47, 47, 47, 1),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 7,
                                      child: Text('${note.todo}',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)))),
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            notes.remove(note);
                                          });
                                        },
                                        icon: Icon(Icons.close),
                                        color: Colors.redAccent[400],
                                        iconSize: 28),
                                  )
                                ],
                              ),
                            ))
                        .toList()),
              ),
              Container(
                  color: Color.fromRGBO(47, 47, 47, 0.8),
                  child: Center(
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        )),
                  )),
            ],
          ),
        ),
      ),
    )));
  }
}
