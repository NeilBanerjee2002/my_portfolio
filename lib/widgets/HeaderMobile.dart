import 'package:flutter/material.dart';
import 'package:portfolio/widgets/sitelogo.dart';

import '../styles/style.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: kHeaderDecoraton,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          SizedBox(width: 20,),
          SiteLogo(onTap: onLogoTap),
          Spacer(),
          IconButton(icon: Icon(Icons.menu), onPressed: onMenuTap,),
          SizedBox(width: 20,)
        ],
      ),
    );
  }
}
