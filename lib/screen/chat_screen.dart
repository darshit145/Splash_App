import 'package:flutter/material.dart';
import 'package:splash/customs/resources.dart';
import 'package:splash/screen/tranction_screen.dart';

import '../customs/app_themes_color.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.blueThemeColor,
      body: Column(
        children: [
          SafeArea(
            child:  Padding(
              padding:  EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_outlined,color: Colors.white,),
                  Container(
                    child: Column(
                       children: [
                         PX10,
                         Container(
                           height: 50,
                           width: 50,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.all(
                               Radius.circular(10)
                             )
                           ),
                         ),
                         Text("Name User",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                         Text("Name User",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),)

                       ],
                    ),
                  ),
                  Icon(Icons.menu_sharp,color: Colors.white,),

                ],
              ),
            )
          ),
          PX10,
          PX10,
          PX10,
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )
              
            ),
            child: Column(
              children: [
                PX(20),
                Expanded(child: PX10),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: SizedBox(

                    height: 56,
                    child: TextFormField(
                      style:  TextStyle(color: Colours.white,fontWeight: FontWeight.w400,fontSize: 18) ,
                      // obscureText: isObscure,

                      cursorColor: Colors.white ,
                      decoration: InputDecoration(
                          hintText: "  hintText",
                          // hintStyle:hintStyle ,
                          // prefixIcon: Icon,
                          suffixIcon: Icon(Icons.send,color: Colors.white,),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colours.greenButtonColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15)
                                )
                              ),
                              child: Icon(Icons.star,size: 20,color: Colors.white,),
                            ),
                          ),
                          // prefix: VerticalDivider(endIndent: 2,indent: 25,width: 1,thickness: 2,color: Colors.black,),

                          // fillColor: Colors.red,
                          filled: true,
                          // fillColor:fillcolor? Colours.darkBlue: textFieldBackGround,

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
                  ),
                )
              ],
            ),
          )),
          Container(
            height: 30,
            color: Colors.black,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)
                    )
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 75,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomCustomIcon(icon: Icons.camera_alt),
                bottomCustomIcon(icon: Icons.file_copy),
                bottomCustomIcon(icon: Icons.mic),
                bottomCustomIcon(icon: Icons.send),
              ],
            ),
          )
        ],
      ),
    );
  }
}
Widget bottomCustomIcon({required IconData icon}){
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: Icon(icon,color: Colors.blueGrey,),
  );
}