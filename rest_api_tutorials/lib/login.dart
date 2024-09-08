import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rest_apis/signUp_Screen.dart';

class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<void> logIn (String email, password) async {
    Response response = await post(
        Uri.parse("https://reqres.in/api/login"),
        body: {
          "email" : email,
          "password" : password,
        }
    );
    if(response.statusCode==200){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Log in Successfully")));
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to Log in")));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in screen"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                 logIn(emailController.text.toString(), passwordController.text.toString());
              },
              child: Container(
                height: 50,
                width:250,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("Log in", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
            }, child: Text("Don't have an account? Sign up"))
          ],
        ),
      ),
    );
  }
}
