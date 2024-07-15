import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:splash/screen/auth/otp_verification.dart';

import '../../customs/app_themes_color.dart';
import '../../customs/custom_textfield.dart';
import '../../customs/resources.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool switchValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
        padding:    EdgeInsets.only(left: HEIGHT100*2,right: HEIGHT100*2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            PX(HEIGHT100*10),
              SizedBox(
                height: HEIGHT100*10,
                child: Image.asset(ResourcesImage.logoImage),
              ),
          
              Text("Create a new \nAccount",style: headingText,),
              PX(HEIGHT*6/100),
              CustomTextfield.customTextField(isObscure: false,Icon: Icon(Icons.phone_android),hintText: "Enter Phone"),
              PX(20),
              CustomTextfield.customTextField(isObscure: true,Icon: Icon(Icons.lock),hintText: "Enter Password"),
              PX(20),
              CustomTextfield.customTextField(isObscure: true,Icon: Icon(Icons.lock),hintText: "Enter Password"),
              PX(20),
              CustomTextfield.customTextField(isObscure: true,Icon: Icon(Icons.lock),hintText: "Enter Password"),
              PX(40),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerification(),));
                },
                  child: CustomTextfield.themeButton(wid: double.infinity,btnName: "Create Account")),
              PX(HEIGHT100*8),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Advaced Setting"),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                        },
                        child: Text(" Sign up",style: TextStyle(fontSize: 15,color: Colors.blue),)),

                  ],
                ),
              ),

              // PX(50),
              // Expanded(child:),

          
          
          
          
            ],
          ),
        ),
      ),

    );
  }
}
