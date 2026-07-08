import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
  home:Scaffold(
    appBar: AppBar(
      title: const Text("List View"),
    ),
    body: ListView(
      children: [
        Container(height: 100,color:Colors.red),
        Container(height: 100,color:Colors.yellow),
        Container(height: 100,color:Colors.pink),
        Container(height: 100,color:Colors.green),
      ],
    ),
  ),
  ));
}