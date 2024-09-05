import "package:flutter/material.dart";

class myDismissible extends StatefulWidget {
  const myDismissible({super.key});

  @override
  State<myDismissible> createState() => _myDismissibleState();
}

class _myDismissibleState extends State<myDismissible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
            return Dismissible(
                onDismissed: (direction){
                  if(direction == DismissDirection.startToEnd){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Item added")));
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Item deleted")));
                  }
                },
                key: UniqueKey(),
                child: ListTile(
                  title: Text("Nouman"),
                  subtitle: Text("HOw are you"),
                ),
              background: Container(color: Colors.red,),
              secondaryBackground: Container(color: Colors.green,),
            );
          }),
    );
  }
}
