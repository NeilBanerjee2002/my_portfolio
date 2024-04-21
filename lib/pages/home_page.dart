import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBG,
      body: ListView(
        children: [
          Container(
            height: 500,
            width: double.maxFinite,
            child: Row(
              children: [
                Text("Neil"),
                Spacer(),
                for(int i=0; i < 5; i++)
                  TextButton(onPressed: (){}, child: Text("Button"))
              ],
            ),
          ),
          Container(
            height: 500,
            color: Colors.white,
            width: double.maxFinite,
          ),
          Container(
            height: 500,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}

