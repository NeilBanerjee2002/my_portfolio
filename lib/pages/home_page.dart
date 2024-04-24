import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/navtitles.dart';
import 'package:portfolio/widgets/HeaderDesktop.dart';
import 'package:portfolio/widgets/sitelogo.dart';

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
        backgroundColor: CustomColor.scaffoldBG,
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
