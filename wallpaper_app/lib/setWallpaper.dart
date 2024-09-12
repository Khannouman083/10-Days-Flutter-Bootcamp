import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';

class setWallpaper extends StatefulWidget {
  var imageUrl;
  setWallpaper({super.key, required this.imageUrl});

  @override
  State<setWallpaper> createState() => _setWallpaperState();
}

class _setWallpaperState extends State<setWallpaper> {
  Future<void> setwallpaper () async{
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.imageUrl);
    var result = await WallpaperManager.setWallpaperFromFile(file.path, location).toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.imageUrl), fit: BoxFit.cover)
              ),
            ),
          ),
          InkWell(
            onTap: (){
              setwallpaper();
            },
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.red,
              child: Center(child: Text("Set wallpaper")),
            ),
          )
        ],
      ),
    );
  }
}
