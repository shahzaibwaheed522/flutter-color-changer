import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   home:HomeScreen(),
  ));
}
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  State<HomeScreen> createState()=> HomeScreenState();
}
class HomeScreenState extends State<HomeScreen>{
  TextEditingController namecontroller=TextEditingController();
  String username="";
  Future<void> savedate() async{
    SharedPreferences prefs= await SharedPreferences.getInstance();
    prefs.setString("Username", namecontroller.text);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Username Saved"),),
    );
  }
  Future<void>readdate() async{
    SharedPreferences prefs= await SharedPreferences.getInstance();
    setState(() {
    username=prefs.getString("username")?? "No Data";
       });
  }
  @override   
  void initState(){
    super.initState();
    readdate();
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body:Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: namecontroller,
            decoration: InputDecoration(
              labelText: "Enter the username",
              border:OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: ()async
          {
             await savedate();
             readdate();

          }, child: Text("Saved"),),

          SizedBox(height: 20),
          Text("Username",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height:20),
          Text(
            username,
            style: TextStyle(
              color:Colors.blue,
            ),
          ),
        ],
      ),
      ),
    );
  }
}