import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBG.withOpacity(0.5),
                Colors.white.withOpacity(0.5)
              ]).createShader(bounds);
            },
            child: Image.asset(
              "images/Photo with Hat.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
            ),
            blendMode: BlendMode.srcATop,
          ),
          //Intro text
          const Text(
            "Hi! \nI'm Neil Banerjee \nA Flutter Developer ",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 17,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
            width: 130,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get in touch"),
            ),
          ),
        ],
      ),
    );
  }
}
