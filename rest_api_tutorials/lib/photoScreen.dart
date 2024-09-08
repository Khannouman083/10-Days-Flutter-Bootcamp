import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rest_apis/models/photoModel.dart';
import 'package:http/http.dart' as http;
class photoScreen extends StatefulWidget {
  const photoScreen({super.key});

  @override
  State<photoScreen> createState() => _photoScreenState();
}

class _photoScreenState extends State<photoScreen> {
  
  List<Photomodel> photoList = [];
  Future<List<Photomodel>> getPhotosApi () async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        Photomodel photos = Photomodel(id: i["id"], title: i["title"], url: i["url"]);
        photoList.add(photos);
      }
      return photoList;
    }
    else {
      return photoList;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Screen"),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [

          Icon(Icons.logout),
          SizedBox(width: 20,),
        ],
      ),
      body: FutureBuilder(
          future: getPhotosApi(),
          builder: (context,AsyncSnapshot<List<Photomodel>> snapshot){
            return ListView.builder(
                itemCount: photoList.length,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(snapshot.data![index].url.toString()),
                    ),
                    title: Text("Person "+snapshot.data![index].id.toString()),
                    subtitle: Text(snapshot.data![index].title.toString()),
                  );
                });
          }),
    );
  }
}
