import 'package:flutter/material.dart';
import 'package:rest_apis/login.dart';
import 'package:http/http.dart';
class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<void> signup (String email, password) async {
    Response response = await post(
      Uri.parse("https://reqres.in/api/register"),
      body: {
        "email" : email,
        "password" : password,
      }
    );
    if(response.statusCode==200){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Register Successfully")));
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to Register")));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up screen"),
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
                signup(emailController.text.toString(), passwordController.text.toString());
              },
              child: Container(
                height: 50,
                width:250,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("Sign Up", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>logIn()));
            }, child: Text("Already have an account? Log in"))
          ],
        ),
      ),
    );
  }
}
