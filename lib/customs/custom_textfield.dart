import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:splash/customs/app_themes_color.dart';

class CustomTextfield {
  static Widget customTextField({required Widget Icon,required String hintText,required bool isObscure, hintStyle, fillcolor=false,}) {
    return SizedBox(

      height: 56,
      child: TextFormField(
        style: fillcolor? TextStyle(color: Colours.white,fontWeight: FontWeight.w400,fontSize: 18):TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 18),
        obscureText: isObscure,

        cursorColor:fillcolor? Colors.white: Colors.black,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:hintStyle ,
          prefixIcon: Icon,
          // prefix: VerticalDivider(endIndent: 2,indent: 25,width: 1,thickness: 2,color: Colors.black,),

          // fillColor: Colors.red,
          filled: true,
          fillColor:fillcolor? Colours.darkBlue: textFieldBackGround,

          enabledBorder: OutlineInputBorder(
              borderRadius:BorderRadius.all(
                Radius.circular(60)
              ),
            borderSide:BorderSide.none
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(60)
            ),
              borderSide:BorderSide.none

          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(60)
            ),
              borderSide:BorderSide.none

          )

        ),
      ),
    );
  }

  static Widget themeButton({required double wid,required String btnName}) {
    return Container(
      width: wid,
      height: 58,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          )),
      child: Center(
        child: Text(btnName,style: TextStyle(color: Colors.white,fontSize: 16,wordSpacing: 2,letterSpacing: 1,fontWeight: FontWeight.w600),),
      ),
    );
  }
  static Widget themeButtonWithChile({required double wid,required Widget btnName}) {
    return Container(
      width: wid,
      height: 58,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          )),
      child: Center(
        child: btnName
      ),
    );
  }
}
