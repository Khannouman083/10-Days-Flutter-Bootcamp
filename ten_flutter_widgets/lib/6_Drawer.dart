import 'package:flutter/material.dart';

class myDrawer extends StatefulWidget {
  const myDrawer({super.key});

  @override
  State<myDrawer> createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                  child: Container(
                color: Colors.red,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 40,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nouman Khan"),

                      ],
                    ),
                  ],
                ),
              )),
              ListTile(
                leading: Icon(Icons.file_copy_sharp),
                title: Text("Files"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ), ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),

            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("My Drawer"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(child: Text("This is drawer")),
    );
  }
}
