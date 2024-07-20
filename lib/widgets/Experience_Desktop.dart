import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/sitelogo.dart';

class ExperienceDesktop extends StatelessWidget {
  const ExperienceDesktop ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: MediaQuery.of(context).size.height - 180,
    );
  }
}
