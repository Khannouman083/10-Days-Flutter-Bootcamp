import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ten_flutter_widgets/14_tabBar.dart';
import 'package:ten_flutter_widgets/8_textformfield.dart';

class mySplashScreen extends StatefulWidget {
  const mySplashScreen({super.key});

  @override
  State<mySplashScreen> createState() => _mySplashScreenState();
}

class _mySplashScreenState extends State<mySplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>TextformMy()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash Screen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
