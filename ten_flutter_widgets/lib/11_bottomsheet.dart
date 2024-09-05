import 'package:flutter/material.dart';

class myBottomSheet extends StatefulWidget {
  const myBottomSheet({super.key});

  @override
  State<myBottomSheet> createState() => _myBottomSheetState();
}

class _myBottomSheetState extends State<myBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.yellow)
            ),
            onPressed: (){
              showModalBottomSheet(
                backgroundColor: Colors.green,
                  enableDrag: true,
                  context: context,
                  builder: (context){
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: CircleAvatar(),
                          title: Text("Nouman Khan"),
                        ),
                        ListTile(
                          leading: CircleAvatar(),
                          title: Text("Asif Khan"),
                        ),
                        ListTile(
                          leading: CircleAvatar(),
                          title: Text("Salman Khan"),
                        ),
                        ListTile(
                          leading: CircleAvatar(),
                          title: Text("Add account"),
                        ),
                      ],
                    );
                  });
            },
            child: Text("Show bottom Sheet")),
      ),
    );
  }
}
