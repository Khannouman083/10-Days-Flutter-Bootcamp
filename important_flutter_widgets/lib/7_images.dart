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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Container(
            //   height: 200,
            //   width: 200,
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //     image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            //     fit: BoxFit.cover)
            //   ),
            // )
            // SizedBox(
            //   height: 20,
            // ),
           Container(
             height: 500,
             width: 200,
             decoration: BoxDecoration(
               color: Colors.blue,
               image: DecorationImage(image: AssetImage("mypic.jpg"),
               fit: BoxFit.cover)
             ),
           )
          ],
        ),
      ),
    );
  }
}
