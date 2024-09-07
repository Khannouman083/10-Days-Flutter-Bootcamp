import 'package:flutter/material.dart';

class listGrid extends StatefulWidget {
  const listGrid({super.key});

  @override
  State<listGrid> createState() => _listGridState();
}

class _listGridState extends State<listGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List and Grid"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body:
      // ListView.builder(
      //    itemCount: 50,
      //     itemBuilder: (context, index){
      //       return Card(
      //         child: ListTile(
      //           leading: CircleAvatar(
      //             backgroundColor: Colors.teal,
      //           ),
      //           title: Text("Nouman"),
      //           subtitle: Text("Hey, where are you?"),
      //           trailing: Text("10:59 PM"),
      //         ),
      //       );
      //     }),

      GridView.builder(
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
          childAspectRatio: 2/3,
          mainAxisSpacing: 10),
          itemBuilder: (context, index){
            return Card(
              child: Center(child: Text("Nouman")),
            );
          })
    );
  }
}
