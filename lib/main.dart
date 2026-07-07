import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp(),
  ));
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container with star example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 250,
              color:Colors.blue,
            ),
            const Positioned(
              top:20,
              left:20,
              child: Icon(
                Icons.stars,
                size:60,
                color:Colors.yellow,
            ),
            ),
          ],
        ),
      ),
      
    );
  }
}