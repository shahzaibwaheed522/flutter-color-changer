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
        title: const Text("Notification Badge"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Stack(
          children: [
            const Icon(
              Icons.shopping_cart,
              size:100,
              color:Colors.black,
            ),
            Positioned(   
              top:0,
              right: 0,
              child: Container(
                width:30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}