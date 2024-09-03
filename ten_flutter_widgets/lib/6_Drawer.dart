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
          color: Colors.red,
          child: ListView(
            children: [
              DrawerHeader(child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:
                   NetworkImage("https://www.bing.com/ck/a?!&&p=9af93c21b2db81d1JmltdHM9MTcyNTMyMTYwMCZpZ3VpZD0yYjYwYWE4Yy02NGY2LTZiNDUtMWFhNi1iZWZkNjUyZDZhNjEmaW5zaWQ9NTUxNA&ptn=3&ver=2&hsh=3&fclid=2b60aa8c-64f6-6b45-1aa6-befd652d6a61&u=a1L2ltYWdlcy9zZWFyY2g_cT1yYW5kb20lMjBwZW9wbGUlMjBpbWFnZXMmRk9STT1JUUZSQkEmaWQ9MzhBNkRDNTk0Q0FGOEYzMjI4RDZCRkQzNjQwQzhFQzc1Q0E1RjE1MQ&ntb=1"),
                    ),
                    SizedBox(width: 30,),
                    Text("Nouman Khan")
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
        title: Text("List and Grid"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(child: Text("This is drawer")),
    );
  }
}
