import 'package:firebase_tutorials/addpost.dart';
import 'package:firebase_tutorials/loginScreen.dart';
import 'package:flutter/material.dart';

class postScreen extends StatefulWidget {
  const postScreen({super.key});

  @override
  State<postScreen> createState() => _postScreenState();
}

class _postScreenState extends State<postScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Post Screen"),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
              },
              child: Icon(Icons.logout)),
          SizedBox(width: 20,)
        ],
      ),
      body: Center(
        child: Text("Post Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>addPost()));
      },
        child: Icon(Icons.add),),
    );
  }
}
