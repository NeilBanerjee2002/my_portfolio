import 'package:flutter/material.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        height: MediaQuery.of(context).size.height / 1.2,
        constraints: BoxConstraints(minHeight: 350),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi! \nI'm Neil Banerjee \nA Flutter Developer ",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Get in touch"),
                  ),
                ),
              ],
            ),
            Image.asset(
              "images/Photo with Hat.jpg",
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 4,
            ),
          ],
        )
    );
  }
}
