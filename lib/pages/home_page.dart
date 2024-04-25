import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/navtitles.dart';

import '../widgets/HeaderMobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBG,
      endDrawer: Drawer(
        width: 200,
        backgroundColor: CustomColor.scaffoldBG,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20, bottom: 10),
                child: IconButton(icon: Icon(Icons.close), onPressed: () { Navigator.of(context).pop(); },),
              ),
            ),
            for(int i=0; i<navIcons.length; i++)
              ListTile(
                leading: Icon(navIcons[i]),
                title: Text(navTitles[i]),
                titleTextStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 15,),
              )
          ]
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //HeaderDesktop()
          HeaderMobile(onMenuTap: (){scaffoldKey.currentState?.openEndDrawer();},
          onLogoTap: (){},)
        ],
      ),
    );
  }
}
