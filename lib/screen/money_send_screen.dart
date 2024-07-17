import 'package:flutter/material.dart';
import 'package:splash/customs/resources.dart';
import 'package:splash/screen/sucess_money_send_screen.dart';

import '../customs/app_themes_color.dart';
import '../customs/custom_textfield.dart';
class MoneySendScreen extends StatefulWidget {
  String name;
   MoneySendScreen({super.key,required this.name});

  @override
  State<MoneySendScreen> createState() => _MoneySendScreenState();
}

class _MoneySendScreenState extends State<MoneySendScreen> {
  int payingMoney=00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_outlined,color: Colours.white,)),
        backgroundColor: Colours.blueThemeColor,
      ),
      body: Container(
        color: Colours.blueThemeColor,
        child: Column(
          children: [
            PX(10),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(18)
                )
              ),
            ),
            PX10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Send Money to ",style: TextStyle(color: Colours.white,fontWeight: FontWeight.w400,fontSize: 15),),
                Text(widget.name,style: TextStyle(color: Colours.white,fontWeight: FontWeight.w400,fontSize: 17))
              ],
            ),
            PX(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$ ",style: TextStyle(color:  Colours.white,fontSize: 20,fontWeight: FontWeight.w400),),
                Text(payingMoney.toString(),style: TextStyle(color: Colours.white,fontSize: 30,fontWeight: FontWeight.w400),),
              ],
            ),
            PX(40),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colours.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
              ),
              child: Column(
                children: [
                  PX(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customNumPad(1),
                      customNumPad(2),
                      customNumPad(3),
                    ],
                  ),
                  PX10,
                  PX10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customNumPad(4),
                      customNumPad(5),
                      customNumPad(6),
                    ],
                  ),
                  PX10,
                  PX10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customNumPad(7),
                      customNumPad(8),
                      customNumPad(9),
                    ],
                  ),
                  PX10,
                  PX10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PX(HEIGHT100*9),
                      customNumPad(0),
                      Container(
                        color: Colors.white,
                        height: HEIGHT100*9,
                        width: HEIGHT100*9,
                        child: IconButton(
                          icon: Icon(Icons.backspace_outlined),
                          onPressed: () {
                          if(payingMoney<10){
                            setState(() {
                              payingMoney=0;
                            });

                          }else{
                            String mon=payingMoney.toString();
                            mon=mon.substring(0,mon.length-1);
                            setState(() {
                              payingMoney=int.parse(mon);
                            });
                          }

                          },
                        ),
                      )
                    ],
                  ),
                ],
              )
            )),
            Container(
              color: Colors.white,
              width: WIDTH100*100,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      displayModalBottonSheet();
                    },
                      child: CustomTextfield.themeButtonWithChile(wid: WIDTH100*96, btnName: const Text("Continue",style: TextStyle(color: Colors.white,fontSize: 16,wordSpacing: 2,letterSpacing: 1,fontWeight: FontWeight.w600),) )
                  ),
                  PX10

                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
  void displayModalBottonSheet(){
    bool forProcessIndicator=false;

    showModalBottomSheet(
      backgroundColor: Colors.white,
      showDragHandle: true,

      context: context, builder: (context) {
      return StatefulBuilder(

        builder: (context, setState) {
          return     Container(
              height: HEIGHT100*50,
              width: WIDTH100*100,
              child: Column(
                children: [
                  Text("Confirm Transfer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  PX(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("\$ ",style: TextStyle(color:  Colours.black,fontSize: 20,fontWeight: FontWeight.w400),),
                      Text(payingMoney.toString(),style: TextStyle(color: Colours.black,fontSize: 30,fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Expanded(child: Container(
                    child: ListView(
                      children: [
                        customListCard(),
                        customListCard(),

                      ],
                    ),
                  )),
                  Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            forProcessIndicator=!forProcessIndicator;
                          });
                          Future.delayed(Duration(seconds: 2),(){
                            Navigator.pop(context);

                            tranjectionCompleteBottomSheet();

                          });
                        },
                        child:CustomTextfield.themeButtonWithChile(wid: WIDTH100*96, btnName: forProcessIndicator? CircularProgressIndicator(): Text("Continue",style: TextStyle(color: Colors.white,fontSize: 16,wordSpacing: 2,letterSpacing: 1,fontWeight: FontWeight.w600),) )
                    ),
                  )

                ],
              )
          );
        },

      );
    },);
  }
  void tranjectionCompleteBottomSheet(){
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => SucessMoneySendScreen(money: payingMoney,reciverName: widget.name,),));
    });
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context, builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Container(
            height: HEIGHT100*50,
            width: WIDTH100*100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                PX(20),
                Text("Sending Money..",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),)
              ],
            ),
          );
        },
         );
    },);
  }
  Widget customNumPad(int val){
    return GestureDetector(
      onTap: () {
         String mon=payingMoney.toString();
         mon=mon+val.toString();
         payingMoney=int.parse(mon);
         setState(() {

         });

      },
      child: Container(
        height: HEIGHT100*9,
        width: HEIGHT100*9,
        color: Colors.white,
        child: Center(
          child: Text("$val",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),),
        ),
      ),
    );
  }
}
Widget customListCard(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      color: Colors.black12,
      child: ListTile(
        leading:  Container(
          height: HEIGHT100*7,
          width: HEIGHT100*7,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                  Radius.circular(20)
              )
          ),
        ),
        title: Text("title"),
        subtitle: Text("full  name"),

      ),
    ),
  );
}