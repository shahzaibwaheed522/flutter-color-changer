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
        title: const Text("Stack 2 Example"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Stack(
          children: [
            Image.network(
              "https://picsum.photos/300/200",
              width: 300,
              height: 200,
              fit:BoxFit.cover,
            ),
            const Text(
              "Beautiful Nature",
              style: TextStyle(
                color:Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            

          ],
        ),
      ),
    );
  }
}