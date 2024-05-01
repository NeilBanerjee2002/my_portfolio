import 'package:flutter/material.dart';

import '../constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < platformItems.length; i++)
          Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey,
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10),
              leading: Image.asset(
                platformItems[i]["img"],
                width: 26,
              ),
              title: Text(
                platformItems[i]["title"],
                style:
                TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        SizedBox(height: 50,),
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: [
            for(int i=0; i < skillItems.length; i++)
              Chip(
                backgroundColor: Colors.grey,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                label: Text(skillItems[i]["title"]),
                avatar: Image.asset(skillItems[i]["img"]),
              )
          ],
        ),
      ],
    );
  }
}
