import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyDismissible(),
  ));
}

class MyDismissible extends StatefulWidget {
  const MyDismissible({super.key});

  @override
  State<MyDismissible> createState() => _MyDismissibleState();
}

class _MyDismissibleState extends State<MyDismissible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.green),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Alert Dialog"),
                  content: const Text(
                    "Hello, I am Nouman and this is an alert dialog",
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Approve"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text(
            "Alert Dialog",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
