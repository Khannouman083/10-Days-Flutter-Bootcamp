import 'package:flutter/material.dart';

class mySnackbar extends StatefulWidget {
  const mySnackbar({super.key});

  @override
  State<mySnackbar> createState() => _mySnackbarState();
}

class _mySnackbarState extends State<mySnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Snackbar"),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.teal)
              ),
              onPressed: (){
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                   duration: Duration(milliseconds: 3000),
                   behavior: SnackBarBehavior.floating,
                   action: SnackBarAction(
                       label: "Undo",
                       onPressed: (){}),
                   backgroundColor: Colors.red,
                     content: Text("This is an error")));
              }, child: Text("Elevated Button",style: TextStyle(
              color: Colors.white
          ))),
        ),
      ),
    );
  }
}
