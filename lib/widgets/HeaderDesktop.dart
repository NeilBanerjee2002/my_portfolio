import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/sitelogo.dart';

import '../constants/colors.dart';
import '../constants/navtitles.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      decoration: kHeaderDecoraton,
      child: Row(
        children: [
          SiteLogo(onTap: (){}),
          const Spacer(),
          for(int i=0; i < navTitles.length; i++)
            TextButton(onPressed: (){}, child: Text(navTitles[i], style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800),))
        ],
      ),
    );
  }
}
