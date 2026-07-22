import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("mybox");
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomeScreen(),
    ));
}
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  State<HomeScreen> createState()=> _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  TextEditingController namecontroller=TextEditingController();
  var box=Hive.box("mybox");
  String username="";
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive Example"),
        centerTitle: true,
      ),
      body:Padding(     
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                hintText: "Enter Username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:20),
            ElevatedButton(onPressed: (){
              box.put("username", namecontroller.text);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Saved Successfully"),),
              );
            }, child: const Text("saved"),),
            const SizedBox(height:20),
            ElevatedButton(onPressed: (){
              setState(() {
                username=box.get("Username")?? "No data";
              });
            }, child: const Text("Read"),),
            const SizedBox(height:20),
            ElevatedButton(onPressed: (){
              box.delete("Username");
              setState(() {
                username="Deleted";
              });
            }, child: const Text("delete"),),
            const SizedBox(height:20),
            Text(username,
            style: TextStyle(
              fontSize: 22,
              fontWeight:FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}