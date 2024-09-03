import 'package:flutter/material.dart';

class myImages extends StatefulWidget {
  const myImages({super.key});

  @override
  State<myImages> createState() => _myImagesState();
}

class _myImagesState extends State<myImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: 
        Container(

          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.red,
            image: DecorationImage(image: AssetImage("mypic.jpg"),
                fit:BoxFit.cover)
          ),
        ),
        
      ),
    );
  }
}
