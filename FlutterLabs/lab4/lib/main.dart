import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Тест Завдання 1',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Тест Завдання 1'),
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('1 завдання',
                    style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 158, 16, 16),
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0)),
              ],
            ),
          ),
          bottomNavigationBar:
              BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ], backgroundColor: Colors.deepPurpleAccent),
        ));
  }
}
