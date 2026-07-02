import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:CounterPage(),
  ));
}
class CounterPage extends StatefulWidget{
    const CounterPage({super.key});
    State<CounterPage> createState()=>_CounterPageState();
}
class _CounterPageState extends State<CounterPage>{
   int number=0;
   @override  
   Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
         children: [
          Text("$number",style:TextStyle(fontSize:40)),
          const SizedBox(height:20),
          ElevatedButton(onPressed: (){
            setState(() {
              number+=5;
            });
          }, child: const Text("Increase"),     
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            setState(() {
              number-=5;
            });
          }, child: const Text("Decreased")),
         ],
        ),
      ),
    );
   }
}