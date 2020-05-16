import 'package:flutter/material.dart';
import './screens/questions.dart';
import './screens/todos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tab = [
    ToDos(),
    Questions(),
    Center(child:Text('ofdasla')),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          body: tab[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.amberAccent[200],
            currentIndex: _currentIndex,
            backgroundColor: Color.fromRGBO(47, 47, 47, 1),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.event_available), title: Text('To do')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books), title: Text('Questions')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.question_answer), title: Text('Answers'))
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        )
    );
  }
}
