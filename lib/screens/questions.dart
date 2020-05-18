import 'package:flutter/material.dart';
import 'question.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  List<Question> questions = [
    Question('what is the ultimate purpose of life ?'),
    Question('what is the love ?'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                          child: Text(
                            'Questions',
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
                        children: questions
                            .map((question) => Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 18),
                                  margin: (EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 0)),
                                  color: Color.fromRGBO(47, 47, 47, 1),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          flex: 10,
                                          child: Text('${question.quest}',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1)))),
                                      Expanded(
                                        flex: 1,
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                questions.remove(question);
                                              });
                                            },
                                            icon: Icon(Icons.close),
                                            color: Colors.redAccent[400],
                                            iconSize: 28
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: IconButton(
                                          onPressed: () {

                                          },
                                          icon: Icon(Icons.check),
                                          color: Colors.lightGreenAccent[400],
                                          iconSize: 28,
                                        )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ))
                            .toList()),
                  ),
                  Container(
                      color: Color.fromRGBO(47, 47, 47, 0.8),
                      child: Center(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 20),
                            child: Text(
                              '+',
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
                            )),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
