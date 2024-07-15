import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:splash/customs/app_themes_color.dart';

class CustomTextfield {
  static Widget customTextField({required Widget Icon,required String hintText,required bool isObscure}) {
    return SizedBox(

      height: 56,
      child: TextFormField(
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 18),
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon,
          // prefix: VerticalDivider(endIndent: 2,indent: 25,width: 1,thickness: 2,color: Colors.black,),

          // fillColor: Colors.red,
          filled: true,
          fillColor: textFieldBackGround,

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
}
