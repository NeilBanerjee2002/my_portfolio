import 'package:flutter/material.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          height: MediaQuery.of(context).size.height,
          constraints: BoxConstraints(minHeight: 350),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Neil Banerjee, Flutter Enthusiast,\nJunior Software Engineer at Zimyo,"
                    "\nAspiring MERN stack developer",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                        height: 3.5),
                  ),
                  SizedBox(
                    height: 55,
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
                ],
              ),
              Image.asset(
                "images/web-development-web-developer-web-design-software-developer-web-design-94dc52f227aff32b718ce2ef1a63089b.png",
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
              ),
            ],
          )),
    );
  }
}
