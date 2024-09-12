import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_tutorials/FirestorepostScreen.dart';
import 'package:firebase_tutorials/fogotPass.dart';
import 'package:firebase_tutorials/my_button.dart';
import 'package:firebase_tutorials/signup_screen.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Log in Screen"),
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
                  height: 100,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/logo.png"))
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
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.key),
                      hintText: "Password",
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 5,),
                Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const forgotPass()));
                        },
                        child: const Text("Forgot Password?", style: TextStyle(fontSize: 15),))),
                const SizedBox(
                  height: 30,
                ),
                myButton(
                    title: "Log in",
                    onButtonpress: (){
                      auth.signInWithEmailAndPassword(
                          email: emailController.text.toString(),
                          password: passwordController.text.toString())..then((onValue){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Log in Succesfully")));
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const fireStorePost()));
                      }).catchError((onError){
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
                      });
                    }),
                const SizedBox(height: 10,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const signup()));
                }, child: const Text("Don't have have an account? Sign up"))
              ],
            ),
          ),
        ),
      ),

    );

  }
}
