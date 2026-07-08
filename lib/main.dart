import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
   home:Scaffold(
    appBar: AppBar(
      title: const Text("Grid View Simple Exmaple"),
    ),
    body:GridView.count(crossAxisCount: 
    2,
    children: [
      Container(color:Colors.red),
      Container(color: Colors.yellow),
      Container(color:Colors.pink),
      Container(color: Colors.green),
    ],
    ),
   ),
  ));
}