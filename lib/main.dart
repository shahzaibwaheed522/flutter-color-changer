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
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar Basic Example makes my concept clear and concise"),
        bottom: const TabBar(tabs: [
          Tab(icon: Icon(Icons.home),text: "Home"),
          Tab(icon: Icon(Icons.favorite),text: "Likes"),
          Tab(icon: Icon(Icons.person),text: "Profile"),
        ],),
      ),
      body:TabBarView(children: [
        Center(
          child: Text(
            "Home Screen",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        Center(
          child: Text(
            "Like-Screen",
            style:TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        Center(
          child: Text(
            "Profile-Screen",
            style: TextStyle(
              fontSize:24,
            ),
          ),
        ),
      ],),
    ),);
  }
}