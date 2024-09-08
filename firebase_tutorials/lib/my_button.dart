import 'package:flutter/material.dart';

class myButton extends StatefulWidget {
  String title;
  final VoidCallback onButtonpress;
  myButton({super.key, required this.title, required this.onButtonpress});

  @override
  State<myButton> createState() => _myButtonState();
}

class _myButtonState extends State<myButton> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 50,
        width: 250,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.yellow),
            ),
            onPressed: widget.onButtonpress,
            child: Text(widget.title)));
  }
}
