import 'package:flutter/material.dart';


class TextformMy extends StatefulWidget {
  const TextformMy({super.key});

  @override
  State<TextformMy> createState() => _TextformMyState();
}

class _TextformMyState extends State<TextformMy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form Field"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
                border:  OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(height: 50,width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red)
              ),
                onPressed: (){},
                child: Text("Log in")),
          )
        ],
      ),
    );
  }
}
