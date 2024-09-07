import 'package:flutter/material.dart';

class myButtons extends StatefulWidget {
  const myButtons({super.key});

  @override
  State<myButtons> createState() => _myButtonsState();
}

class _myButtonsState extends State<myButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 200,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red)
                ),
                  onPressed: (){
                print("Text Button is pressed");
              }, child: Text("Text Button", style: TextStyle(
                color: Colors.white
              ),)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.teal)
                ),
                  onPressed: (){
                print("Elevated Button is pressed");
              }, child: Text("Elevated Button",style: TextStyle(
                  color: Colors.white
              ))),
            )
          ],
        ),
        
      ),
    );
  }
}
