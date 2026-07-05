import 'dart:io';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:WelcomePage(),
  ));
  
}
class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),

      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.black,
        ),
      ),
    );
  }
}