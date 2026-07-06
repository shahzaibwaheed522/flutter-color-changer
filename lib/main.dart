import 'dart:io';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
   home:WelcomePage(),
  ));
}
class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row practice"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, size:40),
            Icon(Icons.search,size:40),
            Icon(Icons.person,size: 40),
          ],
        ),
          
        ),
      );
    
  }
}