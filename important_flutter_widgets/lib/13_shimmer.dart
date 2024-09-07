import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class shimmerPkg extends StatefulWidget {
  const shimmerPkg({super.key});

  @override
  State<shimmerPkg> createState() => _shimmerPkgState();
}

class _shimmerPkgState extends State<shimmerPkg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmer"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          child: Shimmer.fromColors(
              child: Text("Nouman", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              baseColor: Colors.red,
              highlightColor: Colors.yellow),
        ),
      ),
    );
  }
}
