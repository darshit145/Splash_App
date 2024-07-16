import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:splash/customs/app_themes_color.dart';
import 'package:splash/customs/resources.dart';
import 'package:splash/screen/quick_contact_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  // ListTile(
                  //   leading: Icon(
                  //     Icons.menu_open_rounded,
                  //     color: Colours.white,
                  //   ),
                  //   trailing: CircleAvatar(
                  //     radius: HEIGHT100 * 2.8,
                  //   ),
                  // ),
                  Container(
                    // height: HEIGHT100*2.8,
                    child: Row(
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
                        customContainer(content: "Send Money",icon: Icons.send),
                        customContainer(content: "Request Money",icon: Icons.people_alt),
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
}
