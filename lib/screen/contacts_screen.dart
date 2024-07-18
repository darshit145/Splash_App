import 'package:flutter/material.dart';
import 'package:splash/customs/resources.dart';

import '../customs/app_themes_color.dart';
import '../customs/custom_textfield.dart';
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.blueThemeColor,
     appBar: AppBar(
       leading: GestureDetector(onTap: () => Navigator.pop(context),child: Icon(Icons.arrow_back_outlined,color: Colors.white,)),
       title: Text("Contacts",style: TextStyle(color: Colors.white),),
       backgroundColor: Colours.blueThemeColor,
       actions: [
         Padding(
           padding:  EdgeInsets.only(right: 20),
           child: Icon(Icons.account_balance,color: Colors.white,),
         ),
       ],

     ),
      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 55,
                  child: CustomTextfield.customTextField(
                      hintStyle: TextStyle(color: Colors.white,fontSize: 16),
                      Icon: Icon(Icons.search_sharp,size: 25,color: Colours.white,), hintText: "Find A contact", isObscure: false,fillcolor: true)),
              PX10,
              PX10,
              Text("   A",style: TextStyle(color: Colors.white),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
          
                  children: [
                    profilrPickWithname(),
                    profilrPickWithname(),
                    profilrPickWithname(),
                  ],
                ),
              ),
              Text("   B",style: TextStyle(color: Colors.white),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
          
                  children: [
                    profilrPickWithname(),
                    profilrPickWithname(),
                    // profilrPickWithname(),
                  ],
                ),
              ),
              Text("   C",style: TextStyle(color: Colors.white),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
          
                  children: [
                    profilrPickWithname(),
                    profilrPickWithname(),
                    profilrPickWithname(),
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
Widget profilrPickWithname(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: HEIGHT100*19,
      width: WIDTH100*30,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        )
      ),
      child: Center(child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PX10,
          PX10,
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
          PX10,
          Text("Facharas",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),
          Text("Facharas",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14),),

          // Text("ok"),
        ],
      )),
    ),
  );
}
