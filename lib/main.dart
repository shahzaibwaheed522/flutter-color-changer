import 'dart:io';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home:Circularpage(),
  ));
}
class Circularpage extends StatelessWidget{
  const Circularpage({super.key});
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Box Decoration with Border Radius"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color:Colors.yellow,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}