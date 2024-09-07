import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class myAnimatedText extends StatefulWidget {
  const myAnimatedText({super.key});

  @override
  State<myAnimatedText> createState() => _myAnimatedTextState();
}

class _myAnimatedTextState extends State<myAnimatedText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Animated Text"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedTextKit(
            //     animatedTexts: [
            //       TyperAnimatedText(
            //           "Hello World", textStyle: TextStyle(
            //         fontSize: 30
            //       )),
            //     ],
            // repeatForever: true,
            //   displayFullTextOnTap: true,
            // ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText("Hello people", textStyle: TextStyle(fontSize: 30)),
                RotateAnimatedText("I am learning flutter",textStyle: TextStyle(fontSize: 30))
              ],
              repeatForever: true,
              displayFullTextOnTap: true,
            ),
          ],
        ),
      ),
    );
  }
}
