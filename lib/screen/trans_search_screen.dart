import 'package:flutter/material.dart';
import 'package:splash/customs/resources.dart';
import 'package:splash/screen/tranction_screen.dart';

import '../customs/app_themes_color.dart';
import '../customs/custom_textfield.dart';
class TransSearchScreen extends StatefulWidget {
  const TransSearchScreen({super.key});

  @override
  State<TransSearchScreen> createState() => _TransSearchScreenState();
}

class _TransSearchScreenState extends State<TransSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.blueThemeColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colours.blueThemeColor,
        title:   ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Transcation",style: TextStyle(color: Colors.white,fontSize: 19),),
            ],
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back_outlined,color: Colors.white,)),
          trailing: Icon(Icons.more_vert_rounded,color: Colors.white,),
        ),
      ),
      body: Column(
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
          PX10,
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    Container(
                      width: WIDTH100*100,
                      height: 60,
                      child: const TabBar(
                        tabs: [
                          Padding(padding: EdgeInsets.only(top: 12, bottom: 12), child: Text('A')),
                          Padding(padding: EdgeInsets.only(top: 12, bottom: 12), child: Text('B')),
                          Padding(padding: EdgeInsets.only(top: 12, bottom: 12), child: Text('C')),
                          Padding(padding: EdgeInsets.only(top: 12, bottom: 12), child: Text('D')),
                        ],
                      ),
                    ),
                    Expanded(child: TabBarView(
                      children: [
                        // Container(color: Colors.red,),
                        contentWidget(),
                        contentWidget(),
                        contentWidget(),
                        contentWidget(),

                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
Widget contentWidget(){
  return ListView.builder(itemBuilder: (context, index) {
    return  customListTile();
  },itemCount: 12,);
}


// body: DefaultTabController(
//         length: 4, child:Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(
//             tabs: [
//               Padding(padding: const EdgeInsets.only(top: 12, bottom: 12), child: Text('green')),
//               Padding(padding: const EdgeInsets.only(top: 12, bottom: 12), child: Text('red')),
//               Padding(padding: const EdgeInsets.only(top: 12, bottom: 12), child: Text('yellow')),
//               Padding(padding: const EdgeInsets.only(top: 12, bottom: 12), child: Text('cyan')),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             Container(color: Colors.teal,),
//             Container(color: Colors.teal,),
//             Container(color: Colors.teal,),
//             Container(color: Colors.red,),
//           ],
//         ),
//       ) ,
//         initialIndex: 1,
//
//       )