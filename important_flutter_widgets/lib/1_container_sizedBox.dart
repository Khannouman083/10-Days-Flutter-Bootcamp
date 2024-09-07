import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  const ContainerSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Container and Sized Box"),
      ),
      body: 
      // Center(
      //   child: SizedBox(
      //     height: 100,
      //     width: 100,
      //     child: Text("Sized Box"),
      //   ),
      // ),
      
      Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.green,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5
              )
            ]

          ),
          child: Center(
              child: Text(
                  "Container")),
        ),
      )
    );
  }
}
