import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_tutorials/addpost.dart';
import 'package:firebase_tutorials/loginScreen.dart';
import 'package:flutter/material.dart';

class postScreen extends StatefulWidget {
  const postScreen({super.key});

  @override
  State<postScreen> createState() => _postScreenState();
}

class _postScreenState extends State<postScreen> {
  final searchController = TextEditingController();
    final auth = FirebaseAuth.instance;
  DatabaseReference dref = FirebaseDatabase.instance.ref("Post");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Post Screen"),
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
      body:
          // StreamBuilder(
          //     stream: dref.onValue,
          //     builder: (context,AsyncSnapshot<DatabaseEvent> snapshot){
          //       if(snapshot.hasData){
          //         Map<dynamic, dynamic> map = snapshot.data!.snapshot.value as dynamic;
          //         List<dynamic> list = [];
          //         list.clear();
          //         list = map.values.toList();
          //         return ListView.builder(
          //             itemCount: snapshot.data!.snapshot.children.length,
          //             itemBuilder: (context, index){
          //               return ListTile(
          //                 title: Text(list[index]['title']) ,
          //                 subtitle: Text(list[index]['id']) ,
          //               );
          //             });
          //
          //       }
          //       else {
          //         return CircularProgressIndicator();
          //       }
          //     }),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: searchController,
              decoration: const InputDecoration(
                hintText: "Search",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value){
                setState(() {
                  
                });
              },
            ),
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: dref,
                itemBuilder: (context, snapshot, animation, index){
                  String title = snapshot.child("title").value.toString();
                  String id = snapshot.child("id").value.toString();
                  if(searchController.text.isEmpty){
                    return ListTile(
                      title: Text(snapshot.child("title").value.toString()),
                      subtitle: Text(snapshot.child("id").value.toString()),
                      trailing: PopupMenuButton(
                          icon: const Icon(Icons.more_vert),
                          itemBuilder: (context)=>[
                            PopupMenuItem(
                                child: ListTile(
                                  leading: const Icon(Icons.edit),
                                  title: const Text("Edit"),
                                  onTap: (){
                                    myDialog(title,snapshot.child("id").value.toString());
                                  },
                                )),
                            PopupMenuItem(
                                child: ListTile(
                                  leading: const Icon(Icons.delete),
                                  title: const Text("Delete"),
                                  onTap: (){
                                    Navigator.pop(context);
                                    dref.child(id).remove();
                                  },
                                )),
                          ]),
                    );
                  }
                  else if(title.toLowerCase().contains(searchController.text.toLowerCase())){
                    return ListTile(
                      title: Text(snapshot.child("title").value.toString()),
                      subtitle: Text(snapshot.child("id").value.toString()),
                    );
                  }
                  else {
                    return Container();
                  }
                 

                 
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const addPost()));

      },
        child: const Icon(Icons.add),),
    );
  }

  Future<void> myDialog (String title, String id) async {
    final editController = TextEditingController();
    editController.text = title;
    return showDialog(
        context: context,
        builder: (context){
      return AlertDialog(
        title: const Text("Update"),
        content: TextField(
          controller: editController,
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
            dref.child(id).update({
              'title' : editController.text
            });
          }, child: const Text("Update")),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("Cancel")),
        ],
      );
        });
  }
}
