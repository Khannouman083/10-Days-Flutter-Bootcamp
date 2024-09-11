import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_tutorials/addFirestorePost.dart';
import 'package:firebase_tutorials/addpost.dart';
import 'package:firebase_tutorials/loginScreen.dart';
import 'package:flutter/material.dart';

class fireStorePost extends StatefulWidget {
  const fireStorePost({super.key});

  @override
  State<fireStorePost> createState() => _fireStorePostState();
}

class _fireStorePostState extends State<fireStorePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("FireStore Post Screen"),
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
      body: Container(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>addFirestorePost()));

        },
        child: Icon(Icons.add),),
    );
  }
}
