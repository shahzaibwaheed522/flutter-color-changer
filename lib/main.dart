import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
    ChangeNotifierProvider(create: (context)=>CounterProvider(),
    child:  const MyApp(),
    ),
  );
}
class CounterProvider extends ChangeNotifier{
  int count=0;
  void increment(){
    count++;
    notifyListeners();
  }
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override   
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  HomeScreen({super.key});
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Basics"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter",style: TextStyle(
                fontSize:20,
              ),
            ),
            

            Consumer<CounterProvider>(
              builder: (context, provider, child) {
                return Text(
                  provider.count.toString(),
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const SizedBox(height: 30),

            ElevatedButton(

              onPressed: () {

            
                Provider.of<CounterProvider>(
                  context,
                  listen: false,
                ).increment();

              },

              child: const Text("Increment"),

            ),

          ],
        ),
      ),
    );
  }
}

    