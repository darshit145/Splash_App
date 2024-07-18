import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:splash/customs/app_themes_color.dart';
import 'package:splash/customs/resources.dart';
import 'package:splash/screen/chat_screen.dart';
import 'package:splash/screen/contacts_screen.dart';
import 'package:splash/screen/quick_contact_screen.dart';
import 'package:splash/screen/setting_screen.dart';
import 'package:splash/screen/tranction_screen.dart';
import 'package:splash/screen/trans_search_screen.dart';

import '../customs/custom_textfield.dart';
import 'creadit_card_info_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,

      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SafeArea(
              child: ListTile(
                leading: profileFreame,
                title: Text("ME"),
                subtitle: Text("My Email ID"),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextfield.themeButtonWithChile(
                      wid: WIDTH100*65,
                      btnName: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [PX(20),Icon(Icons.dashboard,color: Colours.white,size: 30,), PX(25),Text("DashBoard",style: TextStyle(color: Colours.white,fontWeight: FontWeight.w600,fontSize: 15),)],
                      )),
                  PX(30),
                  drawerButtons(name: "Wallet",icons: Icons.account_balance),
                  PX(30),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CreaditCardInfoScreen(),));
                      },

                      child: drawerButtons(name: "Creadit Card",icons: Icons.credit_card)),
                  PX(30),
                  drawerButtons(name: "Home",icons: Icons.home),
                  PX(30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ContactsScreen(),));
                    },
                      child: drawerButtons(name: "Contacts",icons: Icons.contacts)),
                  PX(30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),));
                    },
                      child: drawerButtons(name: "Settings",icons: Icons.settings)),
                  PX(30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
                    },
                      child: drawerButtons(name: "Messaging",icons: Icons.chat)),
                  PX(30),
                  GestureDetector(
                    onTap: () {
                      _key.currentState!.closeDrawer();
                      callTermAndCondition(context);
                    },

                      child: CustomTextfield.themeButton(wid: 300, btnName: "Term & Condition"))




                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colours.blueThemeColor,
      body: Stack(
        children: [

          SafeArea(
            child: Padding(
              padding:  EdgeInsets.only(left: WIDTH100*5,right: WIDTH100*5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    // height: HEIGHT100*2.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _key.currentState!.openDrawer();
                          },
                          child: Icon(Icons.menu_open_rounded,
                            color: Colours.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 25,
                        )
                      ],
                    ),
                  ),
                  PX(HEIGHT100 * 8),
                  Text("Good Morning",style: TextStyle(color: Colours.white,fontSize: 30,fontWeight: FontWeight.w300),),
                  Text("Darshit",style: TextStyle(color: Colours.white,fontWeight: FontWeight.w400,fontSize: 30),),


                ],
              ),
            ),
          ),

          Positioned(
            top: HEIGHT100*55,
            child: Container(
              height: HEIGHT100*45,
                width: WIDTH100*100,
                decoration: BoxDecoration(
                    color: Colours.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(40)
                    )
                ),
              child: Padding(
                padding:  EdgeInsets.only(left: WIDTH100*6,right: WIDTH100*6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PX(HEIGHT100*6),
                    Text("Actions",style: TextStyle(color: Colours.black,fontWeight: FontWeight.w600,fontSize: 16),),
                    Container(
                      height: HEIGHT100*35,
                      child: GridView.count(crossAxisCount: 2,children: [
                        GestureDetector(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
                        },

                            child: customContainer(content: "Chat Screen",icon: Icons.chat)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TransSearchScreen(),));
                          },
                            child: customContainer(content: "Request Money",icon: Icons.people_alt)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => QuickContactScreen(),));
                          },
                            child: customContainer(content: "Wallet",icon: Icons.wallet)),
                        customContainer(content: "Send Money",icon: Icons.camera),
                      ],),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            height: HEIGHT100*30,
            top: HEIGHT100*35,
            child: Container(
              height: HEIGHT100*49,
              width: WIDTH100*100,
              // color: Colors.black12,
              child:  CreditCardWidget(
                cardNumber: "1010101010",
                expiryDate: "8/10",
                cardHolderName: "cardHolderName",
                cvvCode: "cvvCode",
                showBackView: false, //true when you want to show cvv(back) view
                onCreditCardWidgetChange: (CreditCardBrand brand) {},
                backgroundNetworkImage: "https://wallpaperaccess.com/full/2666380.jpg",
              ),
            ),
          ),



        ],
      ),
    );
  }
}

void callTermAndCondition(BuildContext contest) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: contest,
    backgroundColor: Colors.white,
    builder: (context) {
    return StatefulBuilder(
      builder: (context, snapshot) =>Container(
        height: HEIGHT100*80,
        width: WIDTH100*100,
        child: Padding(
          padding:  EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Term & Condition",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              Expanded(child: Text("""You can legally write your own terms and conditions agreement.While some companies rely on lawyers to write their terms for them — like platforms that target minors under 18 or deal with sensitive information — this is not always necessary, and you don’t need one to create a legally-enforceable agreement.More affordable ways to make a practical terms and conditions for your website or app exist.Let’s discuss these options further.""",textAlign: TextAlign.justify,)),
              PX10,
              GestureDetector(
                onTap: () {
                  snapshot((){
                    Navigator.pop(context);
                  });
                },
                  child: CustomTextfield.themeButton(wid: WIDTH100*90, btnName: "Agree"))

            ],
          ),
        ),
      ));
  },);
}
Widget customContainer({required IconData icon,required String content}){
  return Container(
    margin: EdgeInsets.only(bottom: WIDTH100*3,left: WIDTH100*3,right: WIDTH100*3,top: WIDTH100*3),
    color: Colours.backGroungDulWhite,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(radius: HEIGHT100*4,
          backgroundColor: Colors.teal.shade50,
          child: Center(child: Icon(icon,color: Colours.greenButtonColor,size: HEIGHT100*4,)),
        ),
        Text(content,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colours.black),)

      ],
    ),
  );
}
