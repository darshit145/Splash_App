import 'package:flutter/material.dart';
import 'package:splash/customs/resources.dart';

import '../customs/app_themes_color.dart';
class CreaditCardInfoScreen extends StatefulWidget {
  const CreaditCardInfoScreen({super.key});

  @override
  State<CreaditCardInfoScreen> createState() => _CreaditCardInfoScreenState();
}

class _CreaditCardInfoScreenState extends State<CreaditCardInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.blueThemeColor,
      appBar: AppBar(
        backgroundColor: Colours.blueThemeColor,
        leading: Icon(Icons.arrow_back_outlined,color: Colors.white,),
        title: Text("Your Cards",style: TextStyle(color: Colours.white,fontSize: 15   ,fontWeight: FontWeight.w500),),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 200,
            child: Container(
              height: 600,
              width: WIDTH100*100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
            ),
          )

        ],
      ),
    );
  }
}
