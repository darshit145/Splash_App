import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:splash/customs/resources.dart';

import '../customs/app_themes_color.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.blueThemeColor,
      appBar: AppBar(
        backgroundColor: Colours.blueThemeColor,
        automaticallyImplyLeading: false,
        title: ListTile(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },

              child: Icon(Icons.arrow_back_outlined,color: Colors.white,)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" Setting",style: TextStyle(color: Colors.white),),
            ],
          ),
          trailing: Text(":",style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
      ),
      body: Column(
        children: [
          PX10,
          Expanded(child: Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Colors.white,

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              )
            ),
            child: ListView.builder(itemBuilder: (context, index) {
              if(index==4 || index==5){
                return customSettingTile(true);
              }
              return customSettingTile();
            },itemCount: 6,),
          ))


        ],
      ),
    );
  }
}
Widget customSettingTile([bool isButton=false]){
  bool forSwitch1=false;
  bool forSwitch2=false;
  return StatefulBuilder(builder: (context, setState) {

    return Column(
      children: [
        ListTile(
          title: Text("This is Ti",style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text("abcx071@gmail.com"),
          trailing: isButton?      AdvancedSwitch(
            width: 50,
            height: 26,
            initialValue: forSwitch1,
            onChanged: (value) {
              setState(() {
                print("object");
                forSwitch1=!forSwitch1;
              });
            },
            activeColor: buttonColor,

          ):Icon(Icons.arrow_back_outlined),
        ),
        Divider(endIndent: 10,indent: 10,)
      ],
    );
  },);
}