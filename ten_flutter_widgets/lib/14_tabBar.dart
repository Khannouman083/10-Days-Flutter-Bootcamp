import 'package:flutter/material.dart';

class myTabBar extends StatefulWidget {
  const myTabBar({super.key});

  @override
  State<myTabBar> createState() => _myTabBarState();
}

class _myTabBarState extends State<myTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("WhatsApp", style: TextStyle(color: Colors.white),),
            bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.chat), text: "Chats",),
                  Tab(icon: Icon(Icons.camera), text: "Status",),
                  Tab(icon: Icon(Icons.call), text: "Calls",)
                ]),
          ),
          body: TabBarView(
              children: [
                ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("mypic.jpg"),
                        ),
                        title: Text("Nouman Khan"),
                        subtitle: Text("Where are you?"),
                        trailing: Text("11:29 PM"),
                      );
                    }),
                Column(
                  children: [
                ListTile(
                leading: CircleAvatar(
                backgroundImage: AssetImage("mypic.jpg"),
        ),
      title: Text("My Status"),
      subtitle: Text("Tap to add status"),
    ),
                    Divider(),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 50,
                          itemBuilder: (context, index){
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage("mypic.jpg"),
                              ),
                              title: Text("Nouman Khan"),
                              subtitle: Text("2 minutes ago"),
                            );
                          }),
                    ),
                  ],
                ),
                ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("mypic.jpg"),
                        ),
                        title: Text("Nouman Khan"),
                        subtitle: Text("Missed call at 9:30 PM"),
                        trailing: Icon(Icons.call),
                      );
                    }),
              ]),

        ));
  }
}
