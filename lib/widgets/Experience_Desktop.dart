import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/sitelogo.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html';

class ExperienceDesktop extends StatelessWidget {
  ExperienceDesktop({super.key});
  
  final Uri _url = Uri.parse('https://www.zimyo.com/');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchUrl,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.5), // Shadow color with opacity
              spreadRadius: 5, // Spread radius
              blurRadius: 7, // Blur radius
              offset: Offset(4, 5), // Offset in the x and y directions
            ),
          ],),
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        height: MediaQuery.of(context).size.height / 3.8,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10), child: Image.asset(
                    'images/Zimyo.jpeg',
                    width: 100,
                    height: 80,
                  ),
                  )
          
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
