import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_apis/models/PostModel.dart';
class photoScreen extends StatefulWidget {
  const photoScreen({super.key});

  @override
  State<photoScreen> createState() => _photoScreenState();
}

class _photoScreenState extends State<photoScreen> {
  List<PostModel> postList =[];
  Future<List<PostModel>> getPostApi () async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map i in data){
        postList.add(PostModel.fromJson(i));
      }
      return postList;
    }
    else {
      return postList;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest Apis"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body:
        FutureBuilder(
            future: getPostApi(),
            builder: (context, snapshot){
              return ListView.builder(
                  itemCount: postList.length,
                  itemBuilder: (context, index){
                    return Card(
                      color: Colors.green,
                        child: Column(
                      children: [
                        Text("Title:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text(postList[index].title.toString()),
                        Text("Description:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text(postList[index].body.toString()),

                      ],
                    ));
                  });
            })
    );
  }
}
