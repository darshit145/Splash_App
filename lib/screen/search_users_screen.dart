import 'package:flutter/material.dart';

import '../customs/app_themes_color.dart';
class SearchUsersScreen extends StatefulWidget {
  const SearchUsersScreen({super.key});

  @override
  State<SearchUsersScreen> createState() => _SearchUsersScreenState();
}

class _SearchUsersScreenState extends State<SearchUsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.blueThemeColor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_outlined,color: Colours.white,),
        ),
        backgroundColor: Colours.blueThemeColor,
        title: Text("Select A Reciver",style: TextStyle(color: Colours.white,fontWeight: FontWeight.w600,fontSize: 17),),
      ),
    );
  }
}
