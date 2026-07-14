import 'package:flutter/material.dart';
void main(){
   runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override   
  Widget build(BuildContext context){
    return MaterialApp(
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.dark,
      home:const HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
      ),
      body:Center(
        child:Text(
          "Hello Shahzaib",
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}