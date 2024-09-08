import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  void toastMessage (String message, BuildContext context)async{
     await ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message.toString())));
  }
}