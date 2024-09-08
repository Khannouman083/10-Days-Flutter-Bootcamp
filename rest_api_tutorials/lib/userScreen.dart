import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rest_apis/models/UserModel.dart';
import 'package:http/http.dart' as http;
class userScreen extends StatefulWidget {
  const userScreen({super.key});

  @override
  State<userScreen> createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  
  List<UserModel> userlist = [];
  Future<List<UserModel>> getUserApi () async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map i in data){
        userlist.add(UserModel.fromJson(i));
      }
      return userlist;
    }
    else {
      return userlist;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Screen"),
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder(
          future: getUserApi(),
          builder: (context,AsyncSnapshot<List<UserModel>> snapshot){
            if(snapshot.hasData){
            return ListView.builder(
              itemCount: userlist.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                           reusableRow(title: "Name", body: snapshot.data![index].name.toString()),
                            reusableRow(title: "Username", body: snapshot.data![index].username.toString()),
                            reusableRow(title: "Email", body: snapshot.data![index].email.toString()),
                            reusableRow(title: "Phone Number", body: snapshot.data![index].phone.toString()),
                            reusableRow(title: "Address", body: snapshot.data![index].address!.city.toString())
                          ],
                        ),
                      ),
                    ),
                  );
                });}
            else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

class reusableRow extends StatelessWidget {
  String title, body;
  reusableRow({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(body)
        ],
      ),
    );
  }
}

