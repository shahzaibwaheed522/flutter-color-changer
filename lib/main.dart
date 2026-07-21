import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
   home:ScoreScreen(),
  ));
}
class ScoreScreen extends StatefulWidget{
  const ScoreScreen({super.key});
  State<ScoreScreen> createState()=> _ScoreScreenState();
}
class _ScoreScreenState extends State<ScoreScreen>{
  TextEditingController scorecontroller=TextEditingController();
  int highscore=0;
  Future<void> saveScore() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setInt("Highscore", int.parse(scorecontroller.text),);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Score-Saved"),),
    );
     print(prefs.getInt("highScore"));
  }
  Future<void> readScore() async{
    SharedPreferences prefs= await SharedPreferences.getInstance();
    print("Read: ${prefs.getInt("highScore")}");
    setState(() {
      highscore=prefs.getInt("highscore")??0;
    });
  }
  @override   
  void initState(){
    super.initState();
    readScore();
  }
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("High-Score"),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body:Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller:scorecontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText:"Enter Score",
                border:OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:20),
            ElevatedButton(onPressed: ()async{
              await saveScore();
            },
             child: Text("Save Score"),
             ),
             SizedBox(height: 20),
             ElevatedButton(onPressed: ()async{
              await readScore();
             }, child: Text("Read Score"),
             ),
             SizedBox(height:20),
             Text(
              "High Score",
              style: TextStyle(
                fontSize:22,
                fontWeight: FontWeight.bold,
              ),
             ),
             SizedBox(height:20),
             Text(
              "$highscore",
              style: TextStyle(
                fontSize: 30,
                color:Colors.blue,
              ),
             ),
          ],
        ),
      ),
    );
  }
}