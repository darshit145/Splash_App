import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splash/customs/app_themes_color.dart';
import 'package:splash/customs/custom_textfield.dart';
import 'package:splash/customs/resources.dart';
import 'package:splash/screen/profile_screen.dart';

import 'creadit_card_info_screen.dart';

class TranctionScreen extends StatefulWidget {
  const TranctionScreen({super.key});

  @override
  State<TranctionScreen> createState() => _TranctionScreenState();
}

class _TranctionScreenState extends State<TranctionScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List forButtons = [true, false, false, false, false, false, false];
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
                  drawerButtons(name: "Contacts",icons: Icons.contacts),
                  PX(30),
                  drawerButtons(name: "Settings",icons: Icons.settings),
                  PX(30),
                  drawerButtons(name: "Messaging",icons: Icons.chat),
                  PX(30),




                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colours.blueThemeColor,
      body: Column(
        children: [
          Expanded(
              child: SafeArea(
            child: Column(
              children: [
                // PX10,
                ListTile(
                  leading: Builder(
                    builder: (context) => GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Icon(
                        Icons.menu_open_rounded,
                        color: Colours.white,
                      ),
                    ),
                  ),
                  trailing: CircleAvatar(
                    radius: HEIGHT100 * 2.8,
                  ),
                ),
                PX(HEIGHT100 * 8),
                Text(
                  "\$ 34,490",
                  style: TextStyle(
                      color: Colours.white,
                      fontSize: HEIGHT100 * 3.5,
                      fontWeight: FontWeight.w600),
                ),
                PX10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "+16.4%",
                      style: TextStyle(
                          color: Colours.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    Text(
                      " data",
                      style: TextStyle(color: Colours.greenButtonColor),
                    ),
                  ],
                ),
                Expanded(child: Text("ok")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    containerMonth("1 M", 0),
                    containerMonth("2 M", 1),
                    containerMonth("3 M", 2),
                    containerMonth("4 M", 3),
                    containerMonth("6 M", 4),
                    containerMonth("All", 5),
                  ],
                ),
                PX10
              ],
            ),
          )),
          Container(
            width: WIDTH100 * 100,
            height: HEIGHT100 * 45,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: Column(
              children: [
                PX10,
                PX10,
                // Text("data"),
                ListTile(
                  title: Text(
                    "Transction",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  trailing: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          )),
                      child: Icon(Icons.more_vert)),
                ),
                Expanded(
                    child: ListView.builder(
                  padding: EdgeInsets.only(top: 1),
                  itemBuilder: (context, index) {
                    return customListTile();
                  },
                  itemCount: 4,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget containerMonth(String month, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          forButtons = List.generate(
            forButtons.length,
            (index) => false,
          );
          forButtons[index] = !forButtons[index];
        });
      },
      child: Container(
        margin: EdgeInsets.all(HEIGHT100 * 1),
        padding: EdgeInsets.only(
            top: HEIGHT100 * 0.3,
            bottom: HEIGHT100 * 0.3,
            left: HEIGHT100 * 1,
            right: HEIGHT100 * 1),
        decoration: BoxDecoration(
            color: forButtons[index] ? Colours.greenButtonColor : Colours.white,
            borderRadius: BorderRadius.all(Radius.circular(6))),
        child: Text(
          month,
          style: TextStyle(
              color: forButtons[index] ? Colours.white : Colours.black,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

Widget customListTile() {
  return Column(
    children: [
      ListTile(
        // onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => ProfileScreen(),)),
        leading: Container(
          height: HEIGHT100 * 7,
          width: HEIGHT100 * 7,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        title: Text(
          "DropBox",
          style: TextStyle(
              color: Colours.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        subtitle: Text("Today 20:00 PM"),
        trailing: Text(
          "-\$75.00",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colours.black),
        ),
      ),
      // PX(HEIGHT100*1),
      Divider(
        indent: 20,
        endIndent: 20,
      ),
      // PX(HEIGHT100*1),
    ],
  );
}
Widget drawerButtons({required  IconData icons,required String name}){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        PX(20),
        Icon(icons),
        PX(25),
        Text(name)


      ],
    ),
  );
}