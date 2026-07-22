import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:HighScoreScreen(),
  ));
}
class HighScoreScreen extends StatefulWidget{
  const HighScoreScreen({super.key});
  State<HighScoreScreen> createState()=> _HighScoreScreenState();
}
class _HighScoreScreenState extends State<HighScoreScreen>{
  TextEditingController scorecontroller=TextEditingController();
  int highscore=0;
void initState(){
  super.initState();
  loadHighScore();
}
Future<void> loadHighScore() async{
  SharedPreferences pref= await SharedPreferences.getInstance();
  setState(() {
    highscore=pref.getInt("highScore")?? 0;
  });
}
Future<void> saveScore() async{
  SharedPreferences pref= await SharedPreferences.getInstance();
  int score= int.tryParse(scorecontroller.text)??0;
  if(score>highscore){
    await pref.setInt("highScore", score);
    setState(() {
      highscore=score;
    });
  }
  scorecontroller.clear();
}
@override   
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("High-Score"),
    ),
    body: Padding(padding: EdgeInsets.all(20),
    child: Column(
      children: [
        TextField(
          controller:scorecontroller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText:"Enter High Score",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height:20),
        ElevatedButton(onPressed: saveScore, child: const Text("Save-Score"),),
        const SizedBox(height: 20),
       Text(   
        "HighScore-$highscore",
        style: TextStyle(
          fontSize:20,
          fontWeight:FontWeight.bold,
        ),
       ),
      ],
    ),
    ),
  );
}
}