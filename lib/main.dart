import "package:flutter/material.dart";
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  State<MyApp> createState()=> _MyAppState();
}
class _MyAppState extends State<MyApp>{
     bool isliked=false;
     @override  
     Widget build(BuildContext context){
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isliked ? "❤️" : "🤍",
                style: TextStyle(fontSize: 30),
              ),
             ElevatedButton(onPressed: (){
              setState(() {
                isliked=!isliked;
              });
             }, child: const Text("like / unlike")),

            ],
          ),
        ),
      );
     }
}
