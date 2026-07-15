import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:Screen(),
  ));
}
class Screen extends StatefulWidget{
  const Screen({super.key});
  State<Screen> createState()=> _ScreenState();
}
class _ScreenState extends State<Screen>{
  int currentindex=0;
  List <Widget> screens=const[
  Center(child: Text("Home Screen",style: TextStyle(fontSize: 25))),
  Center(child: Text("SearchScreen",style: TextStyle(fontSize: 25))),
  Center(child: Text("Profile Scree",style: TextStyle(fontSize: 25))),
  ];
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
      ),
      body:screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index){
          setState(() {
            currentindex=index;
          });
        },
        items:const[
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label:"Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label:"Search",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profile"),
        ],),
    );
  }
}