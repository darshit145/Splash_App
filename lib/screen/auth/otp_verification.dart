import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:splash/screen/tranction_screen.dart';
import '../../customs/app_themes_color.dart';
import '../../customs/custom_textfield.dart';
import '../../customs/resources.dart';
class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  late final TextEditingController pinController;
  late final GlobalKey<FormState> formKey;
  int second=30;

  @override
  void initState() {
    operationOnSecond();
    super.initState();
    formKey = GlobalKey<FormState>();
    pinController = TextEditingController();
  }

  final pintheme=PinTheme(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      color:  textFieldBackGround,
      borderRadius: BorderRadius.all(
        Radius.circular(20)
      )
    ),
      textStyle: TextStyle(color: Colors.black,fontSize:16)
    
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(pinController.text);
        },
      ),
      backgroundColor: backGroundColor,
      body: Padding(
        padding:  EdgeInsets.only(left: HEIGHT100*2,right: HEIGHT100*2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            PX(HEIGHT100*10),
              SizedBox(
                height: HEIGHT100*10,
                child: Image.asset(ResourcesImage.logoImage),
              ),

              Text("Varification \nCode",style: headingText,),
              PX(HEIGHT*6/100),
              Text("Verify Your Account By Entering the 4 digit\ncode"),
              PX(HEIGHT100*4),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Pinput(
                    validator: (value) {
                      if(value?.length==4 && int.tryParse(value!)!<=9999){
                        return null;
                      }
                      return "Enter Number";
                    },

                    controller: pinController,
                    keyboardType: TextInputType.number,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    length: 4,
                    defaultPinTheme: pintheme,


                  ),
                ),
              ),
              PX(HEIGHT100*10),
              GestureDetector(
                onTap: () {
                  if(formKey.currentState!.validate()){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TranctionScreen(),));
                  }
                },
                  child: CustomTextfield.themeButton(wid: double.infinity,btnName: "Verify")),

              // IconButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => Demo(),)), icon: Icon(Icons.add))
              PX(HEIGHT100*23),
              // Expanded(child: SizedBox()),

              Center(child: Text("Ressend Code in 00:$second",style: TextStyle(color: Colors.blue),))
            ],
          ),
        ),
      ),
    );
  }

  void operationOnSecond() async{
    while(second>0){
      second--;
      await Future.delayed(Duration(seconds: 1),(){
        setState(() {});
      });
    }
  }
}