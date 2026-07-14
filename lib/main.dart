import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
   home:PasswordValidator(),
  ));
}
class PasswordValidator extends StatefulWidget{
  const PasswordValidator({super.key});
  State<PasswordValidator> createState()=> _PasswordValidatorState();
}
class _PasswordValidatorState extends State<PasswordValidator>{
   final _formkey= GlobalKey<FormState>();
   TextEditingController passwordcontroller= TextEditingController();
   @override   
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Password Validator"),
      ),
      body:Padding (    
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller:passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator:(value){
                  if(value!.isEmpty && value.length<6){
                    return "Enter Password or password must be at least 6 character";
                  }     
                  return null;
                },
              ),
              const SizedBox(height:10),
              ElevatedButton(onPressed: (){
                if(_formkey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Password Accepted"),),
                  );
                  print(passwordcontroller.text);
                }
              }, child: const Text("Submit"),),
            ],
          ),
        ),
      ),
    );
   }
}