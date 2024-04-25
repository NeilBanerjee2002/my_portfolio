import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/navtitles.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
