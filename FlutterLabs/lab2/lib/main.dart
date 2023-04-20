import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.black,
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
            )
          ],
        ),
      ),
    ));
  }
}
