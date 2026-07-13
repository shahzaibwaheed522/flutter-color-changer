import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   home:FormScreen(),
  ));
}
class FormScreen extends StatefulWidget{
  const FormScreen({super.key});
  State<FormScreen> createState()=> _formScreenState();
}
class _formScreenState extends State<FormScreen>{
  final _formkey=GlobalKey<FormState>();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Validation"),
      ),
      body:Padding(   
        padding:EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                labelText: "Enter the Name",
                border: OutlineInputBorder(),
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Name";
                }
                return null;
              },
            ),
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                labelText:"Email",
                border: OutlineInputBorder(),
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Email";
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              if(_formkey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Welcome  ${namecontroller.text}",),),
                
                );
                print(namecontroller.text);
                print(emailcontroller.text);
              }
            }, child: const Text("Submit"),),
          ],
        ),
      ),
    );
  }
}