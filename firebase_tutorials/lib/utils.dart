import 'package:flutter/material.dart';

class Utils {
  void toastMessage (String message, BuildContext context)async{
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message.toString())));
  }
}