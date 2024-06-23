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
            blendMode: BlendMode.srcATop,
          ),
          //Intro text
          const Text(
            "Neil Banerjee, Flutter Enthusiast,\nJunior Software Engineer at Zimyo,"
                "\nAspiring MERN stack developer",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
                height: 3.5),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
            width: 180,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black45, // Text color
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10), // Padding
                textStyle: TextStyle(
                  fontSize: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(12), // Rounded corners
                ),
              ),
              child: const Text("View Projects </>"),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Image.asset(
            "images/web-development-web-developer-web-design-software-developer-web-design-94dc52f227aff32b718ce2ef1a63089b.png",
            width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.height /3,
          ),
        ],
      ),
    );
  }
}
