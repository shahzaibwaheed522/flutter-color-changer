import 'package:flutter/material.dart';
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
  TextEditingController weightcontroller=TextEditingController();
  TextEditingController heightcontroller=TextEditingController();
  String result="";
  String category="";
  void calculate(){
    double weight=double.parse(weightcontroller.text);
    double height=double.parse(heightcontroller.text);
    double bmi=weight/(height*height);
    setState(() {
      result=bmi.toStringAsFixed(2);
      if(bmi<18.5){
        category="Normal Weight";
      }else if(bmi>18.5&&bmi<25){
        category="Underweight";
      }
      else if(bmi>25&&bmi<30){
        category="Overweight";
      }else{
        category="Obese";
      }
      });
  }
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: weightcontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText:"Enter your weight (kg)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height:20),
            TextField(
              controller:heightcontroller,
              keyboardType: TextInputType.number,
              decoration:InputDecoration(
                labelText:"Enter your height (m)",
                hintText: "Example:1.75",
                border:OutlineInputBorder(),
              ),
            ),
            SizedBox(
              width:double.infinity,
              child:ElevatedButton(onPressed: calculate, child: const Text("BMI CALCULATE")
              ),
            ),
            SizedBox(height:30),
            Text(
              "BMI :$result",
              style: TextStyle(
                fontSize: 24,
                color:Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              category,
              style:TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}