import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var userInput = '';
  var result = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                          child: Text(result.toString(), style: TextStyle(fontSize: 50),)),
                      Text(userInput.toString(), style: TextStyle(fontSize: 50),),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myButton(title: "AC", onPress: (){
                        setState(() {
                          userInput = " ";
                          result = ' ';
                        });
                      }),
                      myButton(title: "+/-", onPress: (){
                        setState(() {

                        });
                      }),
                      myButton(title: "%", onPress: (){
                        setState(() {
                        });
                      }),
                      myButton(
                          color: Colors.orange,
                          title: "/", onPress: (){
                        setState(() {
                          userInput = userInput+'/';
                        });
                      }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myButton(title: "7", onPress: (){
                        setState(() {
                          userInput = userInput+'7';
                        });
                      }),
                      myButton(title: "8", onPress: (){
                        setState(() {
                          userInput = userInput+'8';
                        });
                      }),
                      myButton(title: "9", onPress: (){
                        setState(() {
                          userInput = userInput+'9';
                        });
                      }),
                      myButton(
                          color: Colors.orange,
                          title: "X", onPress: (){
                        setState(() {
                          userInput = userInput+'X';
                        });
                      }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myButton(title: "4", onPress: (){
                        setState(() {
                          userInput = userInput+'4';
                        });
                      }),
                      myButton(title: "5", onPress: (){
                        setState(() {
                          userInput = userInput+'5';
                        });
                      }),
                      myButton(title: "6", onPress: (){
                        setState(() {
                          userInput = userInput+'6';
                        });
                      }),
                      myButton(
                         color: Colors.orange,
                          title: "-", onPress: (){
                        setState(() {
                          userInput = userInput+'-';
                        });
                      }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myButton(title: "1", onPress: (){
                        setState(() {
                          userInput = userInput+'1';
                        });
                      }),
                      myButton(title: "2", onPress: (){
                        setState(() {
                          userInput = userInput+'2';
                        });
                      }),
                      myButton(title: "3", onPress: (){
                        setState(() {
                          userInput = userInput+'3';
                        });
                      }),
                      myButton(
                         color: Colors.orange,
                          title: "+", onPress: (){
                        setState(() {
                          userInput = userInput+'+';
                        });
                      }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myButton(title: "0", onPress: (){
                        setState(() {
                          userInput = userInput+'0';
                        });
                      }),
                      myButton(title: "DEL", onPress: (){
                        setState(() {
                            userInput = userInput.substring(0, userInput.length-1);
                        });
                      }),
                      myButton(title: ".", onPress: (){
                        setState(() {
                          userInput = userInput+'.';
                        });
                      }),
                      myButton(
                         color: Colors.orange,
                          title: "=", onPress: (){
                        setState(() {
                            equalPress();
                        });
                      }),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void equalPress (){
    String finalInput = userInput.replaceAll("X", "*");
    Parser p = Parser();
    Expression exp = p.parse(finalInput);
    ContextModel contextModel = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }
}

class myButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  myButton({super.key, required this.title, this.color= Colors.grey, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle
          ),
          child: Center(child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}

