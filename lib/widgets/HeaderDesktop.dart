import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

import '../constants/navtitles.dart';
import 'package:portfolio/widgets/sitelogo.dart';

class HeaderDesktop extends StatefulWidget {
  int colorIndex;

  HeaderDesktop({super.key, required this.colorIndex});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            Colors.white24,
            Colors.black,
          ],
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 20,),
          SiteLogo(onTap: () {}),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800),
                )),
          SizedBox(width: 20,)
        ],
      ),
    );
  }
}
