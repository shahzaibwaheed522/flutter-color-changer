import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
   home:MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  State<MyApp> createState()=>_MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Drawer Example"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration:BoxDecoration(
                color:Colors.blue,
                
              ),
              child: Center(
                child: Text(
                  "Shahzaib Here",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),  
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title:Text("Setting"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
          ],
        ),
      ),
      body:Center(
        child: Text(
          "Basic Drawer Example",
        ),
      ),
    );
  }
}