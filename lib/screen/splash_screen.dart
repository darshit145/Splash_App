
import 'package:flutter/material.dart';
import 'package:splash/screen/auth/signin_screen.dart';

import '../customs/app_themes_color.dart';
import '../customs/resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SigninScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    HEIGHT=MediaQuery.of(context).size.height;
    WIDTH=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: themeColorBlue,
      body: Center(
        child: Text("Splash",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600),),
      ),
    );
  }
}
