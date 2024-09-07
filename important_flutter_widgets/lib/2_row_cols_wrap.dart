import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Row and columns"),
      ),
      body:
      // Center(
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Container(
      //         height: 50,
      //         width: 50,
      //         color: Colors.green,
      //       ),
      //       Container(
      //         height: 50,
      //         width: 50,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         height: 50,
      //         width: 50,
      //         color: Colors.black,
      //       ),
      //       Container(
      //         height: 50,
      //         width: 50,
      //         color: Colors.purple,
      //       ),
      //     ],
      //   ),
      // ),

      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.purple,
            ),
          ],
        ),
      )
    );
  }
}
