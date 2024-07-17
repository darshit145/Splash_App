import 'package:flutter/material.dart';
late double HEIGHT;
late double WIDTH;
double HEIGHT100=HEIGHT/100;
double WIDTH100=WIDTH/100;

Widget PX10=SizedBox(height: 10,width: 10,);

Widget PX(double height)=>SizedBox(height: height,width: height,);

class ResourcesImage{
static String logoImage="assets/loge2.png";

}
Widget profileFreame=Container(
  height: HEIGHT100*7,
  width: HEIGHT100*7,
  decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.all(
          Radius.circular(20)
      )
  ),
);