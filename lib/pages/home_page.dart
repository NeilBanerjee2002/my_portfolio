import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';

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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: MediaQuery.of(context).size.height/1.2,
              constraints: BoxConstraints(minHeight: 350),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("Hi! \nI'm Neil Banerjee \nA Flutter Developer ",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                        color: Colors.white,
                      ),),
                      SizedBox(height: 15,),
                      ElevatedButton(onPressed: (){}, child: const Text("Get in touch")),
                      Image.asset("images/Photo with Hat.jpg",
                      width: MediaQuery.of(context).size.height / 2),
                    ],
                  ),
                ],
              )
            )
          ],
        ),
      );
    });
  }
}
