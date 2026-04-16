import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // 👇 THIS FIXES YOUR ERROR
      scaffoldMessengerKey: messengerKey,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Day 2"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            height: 50,
            width: 300,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
            child: TextButton(
              onPressed: () {
                messengerKey.currentState!.showSnackBar(
                  SnackBar(
                    duration: const Duration(milliseconds: 500),
                    behavior: SnackBarBehavior.floating,
                    content: const Text("This is an error"),
                    backgroundColor: Colors.red,
                    action: SnackBarAction(
                      label: "Undo",
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text("Log In"),
            ),
          ),
        ),
      ),
    );
  }
}
