import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:HomeScreen(),
  ));
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
      ),
      body:Center(
        child: MyButton(
          title:"Login",
        ),
      ),
    );
  }
}
class MyButton extends StatelessWidget{
  final String title;
  const MyButton({super.key, required this.title});
  @override   
  Widget build(BuildContext context){
    return ElevatedButton(onPressed: (){}, child: Text(title),);
  }
}