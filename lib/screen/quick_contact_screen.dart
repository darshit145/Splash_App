import 'package:flutter/material.dart';
import 'package:splash/customs/resources.dart';
import 'package:splash/screen/search_users_screen.dart';
import 'package:splash/screen/tranction_screen.dart';
import 'package:u_credit_card/u_credit_card.dart';
import '../customs/app_themes_color.dart';
class QuickContactScreen extends StatefulWidget {
  const QuickContactScreen({super.key});

  @override
  State<QuickContactScreen> createState() => _QuickContactScreenState();
}

class _QuickContactScreenState extends State<QuickContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.blueThemeColor,
      appBar: AppBar(
        backgroundColor: Colours.blueThemeColor,
        automaticallyImplyLeading: false,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu_open_rounded,
              color: Colours.white,
            ),
            CircleAvatar(
              radius: 25,
            )
          ],
        ),

      ),
      body: Stack(
        children: [

          Positioned(
            height: HEIGHT100*70,
            top: HEIGHT100*20,


            child: Container(
              width: WIDTH100*100,
              height: HEIGHT100*75,
              decoration: BoxDecoration(
                color: Colours.white,
                borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PX(HEIGHT100*11),
                    Text("Quick Contact",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                    PX10,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                        PX10,
                        contactPerson(),
                        contactPerson(),
                        contactPerson(),
                        contactPerson(),
                      ],),
                    ),
                    PX(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Transaction",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                        InkWell(
                          onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => SearchUsersScreen(),)),
                            child: Icon(Icons.more_vert))
                      ],
                    ),
                    customListTile(),
                    customListTile(),
                    customListTile(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            height: HEIGHT100*30,
            child: Container(
              height: HEIGHT100*49,
              width: WIDTH100*100,
              color: Colors.black12,
              child:  Center(
                child: CreditCardUi(
                  cardNumber: "1010101010",
                  cardHolderFullName: "darsh",
                  validThru: "12/32",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget contactPerson(){
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.all(
          Radius.circular(15)
        )
      ),
    );
  }
}
