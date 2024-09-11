import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_tutorials/my_button.dart';
import 'package:firebase_tutorials/utils.dart';
import 'package:flutter/material.dart';

class addFirestorePost extends StatefulWidget {
  const addFirestorePost({super.key});

  @override
  State<addFirestorePost> createState() => _addFirestorePostState();
}

class _addFirestorePostState extends State<addFirestorePost> {
  final postController = TextEditingController();
  final auth = FirebaseAuth.instance;
  final fref = FirebaseFirestore.instance.collection("Post");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Add Firestore Post"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLines: 4,
              controller: postController,
              decoration: InputDecoration(
                  hintText: "Add post",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            myButton(
                title: "Add Post",
                onButtonpress: (){
                  String id = DateTime.now().millisecondsSinceEpoch.toString();
                  fref.doc(id).set({
                    'title' : postController.text.toString(),
                    'id' : id,
                  }).then((onValue){
                    Utils().toastMessage("Post Added", context);
                  }).catchError((onError){
                    Utils().toastMessage(onError.toString(), context);
                  });
                })
          ],
        ),
      ),
    );
  }
}
