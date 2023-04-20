import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text("Практична"),
        )),
        body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Text(
                  "видрочка",
                  style: TextStyle(
                      backgroundColor: Colors.amber,
                      color: Color.fromARGB(255, 185, 74, 0)),
                ),
                height: 200,
                width: 200,
                color: Color.fromARGB(255, 158, 147, 147),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 154, 19, 19),
              ),
              Container(
                height: 50,
                width: 50,
                color: Color.fromARGB(255, 152, 110, 110),
              ),
              Image(
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                  image: AssetImage('assets/o.jpg')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
