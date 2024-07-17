import 'package:flutter/material.dart';
import 'package:splash/customs/custom_textfield.dart';
import 'package:splash/customs/resources.dart';
import 'package:splash/screen/tranction_screen.dart';

import '../customs/app_themes_color.dart';
class SucessMoneySendScreen extends StatefulWidget {
  String reciverName;
  int money;
  SucessMoneySendScreen({super.key,required this.reciverName,required this.money});

  @override
  State<SucessMoneySendScreen> createState() => _SucessMoneySendScreenState();
}

class _SucessMoneySendScreenState extends State<SucessMoneySendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.blueThemeColor,
      appBar: AppBar(
        backgroundColor: Colours.blueThemeColor,
        leading: IconButton(
          onPressed: () {

          },icon: Icon(Icons.menu_open_outlined,color: Colours.white,),
        ),
      ),
      body: SizedBox(
        width: WIDTH100*100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: HEIGHT100*12,
              height: HEIGHT100*12,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),

            ),
            PX(HEIGHT100*3),
            Text("You just Send ${widget.money}",style: TextStyle(color: Colours.white,fontSize: 18,),),
            Text("to ${widget.reciverName}",style: TextStyle(color: Colours.white,fontSize: 18,fontWeight: FontWeight.w600),),
            Divider(indent: 40,endIndent: 40,),
            PX(30),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TranctionScreen(),));
              },
                child: CustomTextfield.themeButton(wid: WIDTH100*80, btnName: "Back To Home")),
            PX(200)

          ],
        ),
      ),
    );
  }
}
