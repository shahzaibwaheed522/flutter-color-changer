import 'dart:io';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Example"),
      ),
      body:ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title:Text("Shahzaib"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Bilal"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
          ),
        ],
      )
    ),
  ));
}