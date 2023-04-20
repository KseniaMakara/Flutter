import 'package:flutter/cupertino.dart'; import 'package:flutter/material.dart';
void main() { runApp(const MyApp());
}
class MyApp extends StatelessWidget { const MyApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp( title: 'Flutter Demo', theme: ThemeData(
primarySwatch: Colors.blue, ),
home: const MyHomePage(title: 'Cars'), );
} }
class MyHomePage extends StatefulWidget {
const MyHomePage({super.key, required this.title}); final String title;
@override
State<MyHomePage> createState() => _MyHomePageState(); }
class _MyHomePageState extends State<MyHomePage> { var assetsArr = [
"assets/p.jpeg", "assets/q.jpg", "assets/e.jpg", "assets/r.jpg"
];
var TitleArr = ["Porsche 911", "Maclaren", "Koenigsegg", "Bugatti"]; 
var price = ["225000\$", "125000\$", "450000\$", "3000000\$"]; 
List<Color> colorsArr = [Colors.grey, Colors.purple, Colors.orange, Colors.red]; 

var DescArr = [
"Porsche 911 — задньо та повнопривідний спортивний автомобіль з «задньомоторною» (двигун за задньою ввісю) компоновкою двигуна, що серійно виробляється компанією Porsche з 1964 року. В наш час компанія виробляє 16 модельних варіантів (модифікацій) базової 911-ї моделі, з 20 варіантами двигунів (потужністю від 355 до 520 к.с.). Історично базовим двигуном 911-ї моделі є 6-циліндровий «боксер»-мотор (опозитний двигун з кутом розбігу осей 180°). Основне виробництво розташоване на заводі Porsche в Штутгарт.",
"McLaren Automotive Limited (укр. Мак-Ла́рен) — британський виробник спортивних авто. Веде відлік з 1963 року та є частиною McLaren Group, куди також входять команда Формули-1 та кілька технологічних компаній. 1989 року створено підрозділ McLaren Cars з метою виробництва «цивільних» спортивних авто на базі технологій, відпрацьованих у перегонах",
"Автомобільне товариство Koenigsegg 3 грудня 2012 р. випустило свій сотий (100-й) автомобіль, ним став Koenigsegg Agera R Hundra. Компонується двигуном власного виробництва 5.0 л. потужністю 960 к.с. з турбінами, а з використанням бензину 93 октанового числа — 1140 к.с.",
"Bugatti Automobiles S.A.S. — французька автомобілебудівна компанія, що спеціалізується на випуску легкових автомобілів класу «люкс» під маркою Bugatti. Компанія заснована в 1909 інженером Етторе Бугатті, з 1998 року компанія належить німецькому автобудівному концерну Volkswagen-Audi AG."];
var step = 0;
void handleNextClick() {
setState(() {
step = (step - 1) % assetsArr.length;
}); }
void handlePrevClick() { setState(() {
step = (step + 1 - assetsArr.length) % assetsArr.length; });
}
@override

Widget build(BuildContext context) {
return Scaffold( backgroundColor: Colors.cyan, appBar: AppBar(
title: Text(widget.title), backgroundColor: Colors.deepPurpleAccent), body: Center(
child: Row(
  children: [
    ElevatedButton(onPressed: handleNextClick, child: Text("Попередня")),
    
    Column(
    
    mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    
    Container(
      width: 400,
      child: Card(
      color: colorsArr[step],

      // color: Color.fromARGB(255, 223, 215, 192),
      
      margin: const EdgeInsets.only(
      
      left: 40.0, right: 40.0, top: 40.0, bottom: 40.0), shape: RoundedRectangleBorder(
      
      borderRadius: BorderRadius.circular(20)), elevation: 20,
      
      child: Padding(
      
      padding: const EdgeInsets.all(8.0), child: Column(
      
      children: [ Image(
      
      width: 200,
      
      height: 100,
      
      image: AssetImage(assetsArr[step])),
      
      Text(TitleArr[step], style: TextStyle(
      
      fontSize: 28, fontWeight: FontWeight.bold)), Text(DescArr[step]), Text("price: ${price[step]}")
      
      ], ),
      
      ), 
       ),
    ),
    
    ],
    
    ),
    ElevatedButton(onPressed: handlePrevClick, child: Text("Наступна")),

  ],
), ),
); }
}