import 'package:flutter/material.dart';

class myAlertDialog extends StatefulWidget {
  const myAlertDialog({super.key});

  @override
  State<myAlertDialog> createState() => _myAlertDialogState();
}

class _myAlertDialogState extends State<myAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.green)
          ),
            onPressed: (){
               showDialog(
                   context: context,
                   builder: (context){
                     return AlertDialog(
                       // backgroundColor: Colors.grey,
                       title: Text("Alert Dialog"),
                       content: Text("hello i am Nouman and this is an alert dialog"),
                       actions: [
                         TextButton(onPressed: (){}, child: Text("Approve")),
                         TextButton(onPressed: (){
                           Navigator.pop(context);
                         }, child: Text("Cancel"))
                       ],
                     );
                   });
            },
            child: Text("Alert Dialog", style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
