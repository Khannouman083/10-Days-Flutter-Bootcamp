import 'package:flutter/material.dart';
import 'package:rest_apis/photoScreen.dart';

void main (){
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});


  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: Colors.green,
       brightness: Brightness.light
      ),
      home: photoScreen(),
    );
  }
}
