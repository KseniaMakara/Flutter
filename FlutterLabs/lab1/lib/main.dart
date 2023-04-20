import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text('Practical')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Card(
            margin: EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                    image: AssetImage('assets/o.jpg')),
                Text(
                  'otter',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      'The word otter derives from the Old English word otor or oter. This, and cognate words in other Indo-European languages, ultimately stem from the Proto-Indo-European language root *wódr̥, which also gave rise to the English word "water".'),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                  elevation: 20,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('nbjdhk', style: TextStyle(fontSize: 15))),
              Card(
                  color: Colors.blue,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'nbjdhk',
                    style: TextStyle(fontSize: 15),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
