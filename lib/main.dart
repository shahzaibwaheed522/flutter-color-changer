import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home:WelcomePage(),
  ));
}
class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Another Example"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Stack(
          children: [
             Container(
              width:250,
              height: 250,
              color:Colors.blue,
             ),
             const Positioned(
              bottom:10,
              right:10,
              child: Icon(
                Icons.home,
                size:40,color: Colors.white,
              ),
              ),
          ],
        ),
      ),
    );
  }

}