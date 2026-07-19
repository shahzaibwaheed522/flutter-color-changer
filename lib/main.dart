import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:Screen(),
  ));
}
class Screen extends StatelessWidget{
  const Screen({super.key});
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Box"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: const Text("Delete"),
              content:const Text("Are your sure"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text("No"),),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text("Yes"),),
              ],
            );
          },);
        }, child: const Text("Show Dialog Box"),),
      ),
    );
  }
}