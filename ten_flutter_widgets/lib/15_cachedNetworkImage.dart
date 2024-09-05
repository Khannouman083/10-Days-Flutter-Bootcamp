import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class cachedImagemy extends StatefulWidget {
  const cachedImagemy({super.key});

  @override
  State<cachedImagemy> createState() => _cachedImagemyState();
}

class _cachedImagemyState extends State<cachedImagemy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chached Image"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: CachedNetworkImage(
              imageUrl: "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          placeholder: (context, url)=> Center(child: CircularProgressIndicator()),
          errorWidget: (context, url,error)=>Icon(Icons.error),),
        ),
      ),
    );
  }
}
