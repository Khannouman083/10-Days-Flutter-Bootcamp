import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_tutorials/loginScreen.dart';
import 'package:firebase_tutorials/my_button.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Sign up Screen"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/logo.png'))
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.key),
                      hintText: "Password",
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
               myButton(
                   title: "Sign Up",
                   onButtonpress: (){
                     auth.createUserWithEmailAndPassword(
                         email: emailController.text.toString(),
                         password: passwordController.text.toString()).then((onValue){
                       print(onValue.toString());
                     }).catchError((onError){
                       print(onError.toString());
                     });
                   }),
                const SizedBox(
                  height: 10,
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const login()));
                }, child: const Text("Already have an account? Log in")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
