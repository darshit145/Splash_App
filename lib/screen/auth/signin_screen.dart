import 'package:flutter/material.dart';
import 'package:splash/customs/custom_textfield.dart';
import 'package:splash/customs/resources.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:splash/screen/auth/sign_up_screen.dart';
import '../../customs/app_themes_color.dart';
class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
          
              Text("Sign in to \nSplash",style: headingText,),
              PX(HEIGHT*6/100),
              CustomTextfield.customTextField(isObscure: false,Icon: Icon(Icons.phone_android),hintText: "Enter Phone"),
              PX(20),
              CustomTextfield.customTextField(isObscure: true,Icon: Icon(Icons.lock),hintText: "Enter Password"),
              PX(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                PX10,
                AdvancedSwitch(
                  width: 50,
                  height: 26,
                  initialValue: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue=!switchValue;
                    });
                  },
                  activeColor: buttonColor,
          
                )
                ],
              ),
              PX(50),
              CustomTextfield.themeButton(wid: double.infinity,btnName: "Sign in"),
              PX(HEIGHT100*20),
          
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
          
          
          
          
            ],
          ),
        ),
      ),

    );
  }
}
