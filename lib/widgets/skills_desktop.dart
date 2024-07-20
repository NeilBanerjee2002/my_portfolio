import 'package:flutter/material.dart';
import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Platform Items
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1000),
                child: Wrap(
                  spacing: 100,
                  runSpacing: 50,
                  children: [
                    for (int i = 0; i < platformItems.length; i++)
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff344C64),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          leading: Image.asset(
                            platformItems[i]["img"],
                            width: 26,
                          ),
                          title: Text(
                            platformItems[i]["title"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 80), // Adjust spacing between platform and skill items

              // Skill Items
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),
                child: Wrap(
                  spacing: 50,
                  runSpacing: 50,
                  children: [
                    for (int i = 0; i < skillItems.length; i++)
                      MouseRegion(
                        onEnter: (_) => _onHover(true, i),
                        onExit: (_) => _onHover(false, i),
                        child: ValueListenableBuilder<bool>(
                          valueListenable: hoverList[i],
                          builder: (context, isHovered, child) {
                            return Card(
                              elevation: isHovered ? 40 : 20,
                              shadowColor: isHovered ? Colors.white : Colors.red,
                              child: Container(
                                height: 120,
                                width: 200,
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      skillItems[i]["img"],
                                      height: 50,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      skillItems[i]["title"],
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _onHover(bool isHovered, int index) {
    hoverList[index].value = isHovered;
  }

  static final List<ValueNotifier<bool>> hoverList = List.generate(skillItems.length, (_) => ValueNotifier(false));
}
