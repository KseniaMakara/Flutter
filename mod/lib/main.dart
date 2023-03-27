import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Марки машин'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrayImage = [
    "assets/images/audi.jpeg",
    "assets/images/chevy.jpeg",
    "assets/images/dodge.jpeg",
    "assets/images/m.jpeg"
  ];
  var arrayTitle = ["AUDI", "CHEVROLET", "DODGE", "MITSUBISHI"];
  var arrayText = [
    "Audi — з 1909 року німецький виробник автомобілів. Штаб-квартира розташована в місті Інгольштадт. У 1928 році компанію купує Йорген Расмуссен. Сьогодні компанія займається виготовленням престижних автомобілів.",
    "Chevrolet — марка автомобілів, що виробляються корпорацією General Motors. Компанію засновано 3 листопада 1911 року. Вона носить ім'я гонщика Луї Шевроле. Перший автомобіль марки Chevrolet — SIX, з'явився 1912 року в США. Він мав шестициліндровий двигун об'ємом 4,7 літра, потужністю 30 кінських сил",
    "Dodge — американська автомобілебудівна компанія в складі корпорації Крайслер, яка спеціалізується на випуску легкових автомобілів, пікапів, мінівенів та спортивних автомобілів. Штаб-квартира розташована в Гайленд-парку.",
    "Mitsubishi Motors Corporation — транснаціональна автомобілебудівна компанія, входить в групу Mitsubishi — найбільшої виробничої групи Японії. Штаб-квартира — в Токіо. В 1970 році Mitsubishi Motors була сформована з підрозділу Mitsubishi Heavy Industries. "
  ];
  var step = 0;
  void OnClickNext() {
    setState(() {
      step = (step - 1) % arrayImage.length;
    });
  }

  void OnClickPrevious() {
    setState(() {
      step = (step + 1 - arrayImage.length) % arrayImage.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 75, 118),
      appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 0, 0, 0)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Color.fromARGB(255, 200, 193, 173),
              margin: const EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 30.0, bottom: 50.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image(
                        width: 200,
                        height: 200,
                        image: AssetImage(arrayImage[step])),
                    Text(arrayTitle[step],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                    Text(arrayText[step]),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: OnClickNext, child: Text("Попередня")),
                ElevatedButton(
                    onPressed: OnClickPrevious, child: Text("Наступна"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
