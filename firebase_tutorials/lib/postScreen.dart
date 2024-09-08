import 'package:flutter/material.dart';

class postScreen extends StatefulWidget {
  const postScreen({super.key});

  @override
  State<postScreen> createState() => _postScreenState();
}

class _postScreenState extends State<postScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Post Screen"),
      ),
    );
  }
}
