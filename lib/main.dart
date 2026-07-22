import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:SettingScreen(),
  ));
}
class SettingScreen extends StatefulWidget{
  const SettingScreen({super.key});
  State<SettingScreen> createState()=> SettingScreenState();
}
class SettingScreenState extends State<SettingScreen>{
  bool isdarkmode=false;
  @override   
  void initState(){
    super.initState();
    loadSetting();
  }
  Future<void> loadSetting() async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      isdarkmode=pref.getBool("darkmode")??false;
    });
  }
  Future<void> saveSetting(bool value) async{
    SharedPreferences pref= await SharedPreferences.getInstance();
    pref.setBool("darkmode", value);
    setState(() {
      isdarkmode=value;
    });
  }
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SwitchListTile(
        title: const Text("DarkMode"),
        value: isdarkmode, onChanged: (value){
          saveSetting(value);
        },),
    );
  }
}