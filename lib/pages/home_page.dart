import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/skill_items.dart';
import 'package:portfolio/widgets/Experience_Desktop.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/skills.mobile.dart';
import 'package:portfolio/widgets/skills_desktop.dart';

import '../constants/size.dart';
import '../widgets/HeaderDesktop.dart';
import '../widgets/HeaderMobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBG,
        endDrawer: const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (constraints.maxWidth > KMinSize)
              const HeaderDesktop()
            else
              HeaderMobile(
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
                onLogoTap: () {},
              ),
            if (constraints.maxWidth > KMinSize)
              const MainDesktop()
            else
              const MainMobile(),

            Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Skills",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 50,),
                    if(constraints.maxWidth > KMinSize)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF5D0E41),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Experiences",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 50,),
                    if(constraints.maxWidth > KMinSize)
                      ExperienceDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
