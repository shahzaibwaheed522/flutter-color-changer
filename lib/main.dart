import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:WelcomePage(),
  ));
}
class WelcomePage extends StatefulWidget{
  const WelcomePage({super.key});
  State<WelcomePage> createState() => _WelcomePageState();

}
class _WelcomePageState extends State<WelcomePage> {
      Color backgroundColor= Colors.blue;
      void changebackground(){
        setState(() {
          backgroundColor=Colors.green;
        });
      }
      @override
     Widget build(BuildContext context){
        return Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            title: const Text("Color Change App"),      
          ),
          body: Center(
            child: ElevatedButton(onPressed: 
            changebackground, child: const Text("Color changed"),
            ),
          ),
        );
     }
  }
