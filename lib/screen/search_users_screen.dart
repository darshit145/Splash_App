import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash/customs/resources.dart';
import 'package:splash/screen/chat_screen.dart';

import '../customs/app_themes_color.dart';
import '../customs/custom_textfield.dart';
import 'money_send_screen.dart';
class SearchUsersScreen extends StatefulWidget {
  const SearchUsersScreen({super.key});

  @override
  State<SearchUsersScreen> createState() => _SearchUsersScreenState();
}

class _SearchUsersScreenState extends State<SearchUsersScreen> {
  bool isAvaliableContact=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_outlined,color: Colours.white,),
        ),
        backgroundColor: Colours.blueThemeColor,
        title: Text("Select A Reciver",style: TextStyle(color: Colours.white,fontWeight: FontWeight.w600,fontSize: 17),),
      ),
      body:Container(
        color: Colours.blueThemeColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PX10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 55,
                  child: CustomTextfield.customTextField(
                    hintStyle: TextStyle(color: Colors.white,fontSize: 16),
                      Icon: Icon(Icons.search_sharp,size: 25,color: Colours.white,), hintText: "Find A contact", isObscure: false,fillcolor: true)),
            ),
            PX10,
            if(isAvaliableContact)
              Padding(
              padding:  EdgeInsets.only(left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact",style: TextStyle(color: Colours.white,fontSize: 15,fontWeight: FontWeight.w600),),
                  PX(6),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.only(right: 40),
                        child: contactAvtar(),
                      );
                    },itemCount: 12,
                    ),
                  ),


                ],
              ),
            ),
            PX(20),



            Expanded(
              child: Container(
                width: WIDTH100*100,
                // height: HEIGHT100*55,
                decoration: BoxDecoration(
                  color: Colours.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))

                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 30),
                  child: ListView.builder(itemBuilder: (context, index) {
                    return   customListTileWithoutTreaileaing(context: context,index: index,name: "darshit",mail: "dfachara3434@gmail.com");
                  },itemCount: 10,
                  ),
                ),
              ),
            )

          ],
        ),
      )
    );
  }
  Widget contactAvtar(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.only(right: 0),
          decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius: BorderRadius.all(
                  Radius.circular(15)
              )
          ),
        ),
        Text("data",style: TextStyle(color: Colours.white,fontWeight: FontWeight.w500,fontSize: 15),)
      ],
    );
  }
}
Widget customListTileWithoutTreaileaing({required String mail,required String name,required  int index,required BuildContext context}){
  if(index==0){
    return Column(
      children: [
        ListTile(
          leading:Container(
            height: HEIGHT100*7,
            width: HEIGHT100*7,
            decoration: BoxDecoration(
              color: Colors.teal.shade50,
              borderRadius: BorderRadius.all(
                  Radius.circular(20)
              ),

            ),
            child: Icon(Icons.supervised_user_circle,color: Colours.greenButtonColor,size: 40,),
          ),
          title: Text("Add New Contect",style: TextStyle(color: Colours.black,fontSize: 15,fontWeight: FontWeight.w500),),
        ),
        Divider(indent: 20,endIndent: 20,),
      ],
    );
  }
  return Column(
    children: [
      ListTile(
        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => MoneySendScreen(name: name,),)),
        leading: GestureDetector(
          onLongPress: () {
            bottomSheeterShowe(context);
          },
          onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => ChatScreen(),)),
          child: Container(
            height: HEIGHT100*7,
            width: HEIGHT100*7,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                    Radius.circular(20)
                )
            ),
          ),
        ),
        title: Text(name,style: TextStyle(color: Colours.black,fontWeight: FontWeight.w600,fontSize: 16),),
        subtitle: Text(mail),

      ),
      // PX(HEIGHT100*1),
      Divider(indent: 20,endIndent: 20,),
      // PX(HEIGHT100*1),

    ],
  );
}
void bottomSheeterShowe(ct){
  showModalBottomSheet(
    backgroundColor: Colors.white,
    showDragHandle: true,
    context: ct, builder: (context) => StatefulBuilder(builder: (context, setState) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 59,
            height: 59,
            decoration: BoxDecoration(
                color: Colors.teal,
              borderRadius: BorderRadius.all(
                Radius.circular(10)
              )
            ),
          ),
          Text("Name SurName",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),),
          Text("MOBILE NO:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),),
          PX(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              getOptions(icon: Icons.account_balance_sharp,data: "Bank"),
              getOptions(data: "Camera",icon: Icons.camera_alt),
              getOptions(icon: Icons.abc,data: "LKG"),


            ],
          )

        ],
      ),

    );
  },),);
}
Widget getOptions({required IconData icon,required String data}){
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Colors.tealAccent.shade100,
        radius: 30,
        child: Icon(icon,size: 30,color: Colors.white,),
      ),
      PX10,
      Text(data,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
    ],
  );
}