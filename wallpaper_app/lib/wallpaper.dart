import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaper_app/setWallpaper.dart';
class myWallpaper extends StatefulWidget {
  const myWallpaper({super.key});

  @override
  State<myWallpaper> createState() => _myWallpaperState();
}

class _myWallpaperState extends State<myWallpaper> {
  int page =1;
  List photos = [];
  Future<void> getPhtosAPi() async{
    final response = await http.get(Uri.parse("https://api.pexels.com/v1/curated?per_page=80"),
    headers: {
      "Authorization" : "kjHsjpWzKTBFLR9xfnLt8wUUf8hsXBiLq6qMVrRfjBhc3aklZg3V3apb"
    });
    var data = jsonDecode(response.body.toString());
    photos = data['photos'];
    print(photos);
  }
  void loadmore ()async{
    setState(() {
      page = page+1;
    });
    String url = "https://api.pexels.com/v1/curated?per_page=80&page="+page.toString();
    final response = await http.get(Uri.parse(url),
        headers: {
          "Authorization" : "kjHsjpWzKTBFLR9xfnLt8wUUf8hsXBiLq6qMVrRfjBhc3aklZg3V3apb"
        });
    var data = jsonDecode(response.body);
    setState(() {
      photos.addAll(data['photos']);
    });
  }
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPhtosAPi();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                itemCount: photos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                childAspectRatio: 2/3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2),
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>setWallpaper(imageUrl:photos[index]['src']['large2x'] ,)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(image: NetworkImage(photos[index]['src']['tiny']), fit: BoxFit.cover)
                      ),
                    ),
                  );
                }),
          ),
          InkWell(
            onTap: (){
              loadmore();
            },
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.red,
              child: Center(child: Text("Load More wallpaper")),
            ),
          )
        ],
      ),
    );
  }
}
