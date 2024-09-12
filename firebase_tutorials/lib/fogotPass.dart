import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_tutorials/my_button.dart';
import 'package:firebase_tutorials/utils.dart';
import 'package:flutter/material.dart';

class forgotPass extends StatefulWidget {
  const forgotPass({super.key});

  @override
  State<forgotPass> createState() => _forgotPassState();
}

class _forgotPassState extends State<forgotPass> {
  TextEditingController emailController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
        backgroundColor: Colors.yellow,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 30,),
            myButton(
                title: "Send Email",
                onButtonpress: (){
                   auth.sendPasswordResetEmail(email: emailController.text.toString()).then((onValue){
                     Utils().toastMessage("Email send successfully", context);
                   }).catchError((onError){
                     Utils().toastMessage(onError.toString(), context);
                   });
                }),
          ],
        ),
      ),

    );
  }
}
