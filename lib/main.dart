import 'package:componentes/src/page/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:componentes/src/page/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePageTemp(),
      home: HomePage(),
    );
  }
}