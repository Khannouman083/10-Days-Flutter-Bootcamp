import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_tutorials/addFirestorePost.dart';
import 'package:firebase_tutorials/loginScreen.dart';
import 'package:flutter/material.dart';

class fireStorePost extends StatefulWidget {
  const fireStorePost({super.key});

  @override
  State<fireStorePost> createState() => _fireStorePostState();
}

class _fireStorePostState extends State<fireStorePost> {
  final auth = FirebaseAuth.instance;
  final fref = FirebaseFirestore.instance.collection("Nouman").snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("FireStore Post Screen"),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const login()));
              },
              child: const Icon(Icons.logout)),
          const SizedBox(width: 20,)
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: fref,
          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(snapshot.data!.docs[index]['title']),
                    subtitle: Text(snapshot.data!.docs[index]['id']),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const addFirestorePost()));

        },
        child: const Icon(Icons.add),),
    );
  }
}
