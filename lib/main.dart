import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
  home:LoginPage(),
  ));
}
class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 80,
              color: Colors.greenAccent,
            ),
            const Text(
               "Login",
               style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
               ),
            ),
            const SizedBox(height:20),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
             SizedBox(
              child: ElevatedButton(onPressed: (){}, child: const Text("Dont have a account Please Signup?")),
             )

          ],
        ),
      ),
    );
  }
}