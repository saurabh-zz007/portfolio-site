import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_site/Cards/buttons.dart';

import 'package:portfolio_site/Cards/my_skill_card_smaller.dart';

class MyProjectCard extends StatefulWidget {
  final String heading;
  final String description;
  final String coverImage;

  const MyProjectCard({
    super.key,
    required this.heading,
    required this.description,
    required this.coverImage,
  });

  @override
  State<MyProjectCard> createState() =>
      _MyProjectCardState();
}

class _MyProjectCardState
    extends State<MyProjectCard> {
  Color color1 = Color(0xffDDD4CB);
  Color color2 = Color(0xff3D2D1B);
  double _ele = 8;
  void _isCardHovered(bool cardHovered) {
    setState(() {
      _ele = cardHovered ? 20 : 8;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        _isCardHovered(true);
      },
      onExit: (event) {
        _isCardHovered(false);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TweenAnimationBuilder(
          tween: Tween<double>(
            begin: 8,
            end: _ele,
          ),
          duration: Duration(milliseconds: 200),
          builder: (context, value, child) {
            return AnimatedScale(
              scale: _ele == 20 ? 1.02 : 1,
              duration: Duration(
                milliseconds: 200,
              ),
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(32),
                  side: BorderSide(
                    color: Color(0xFF3D2D1B),
                    width: 1,
                  ),
                ),
                color: Color(0xFFDDD4CB),
                elevation: _ele,

                child: child,
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              spacing: 10,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(32),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ImageFiltered(
                        imageFilter:
                            ImageFilter.blur(
                              sigmaX: 15,
                              sigmaY: 15,
                            ),
                        child: Image.asset(
                          widget.coverImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      AnimatedScale(
                        scale: _ele == 20
                            ? 1.05
                            : 1,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                        child: Center(
                          child: Image.asset(
                            widget.coverImage,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  widget.heading,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
                Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5D4F3F),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start,

                  spacing: 10,
                  children: [
                    MySkillCardSmaller(
                      skill: "Flutter",
                    ),
                    MySkillCardSmaller(
                      skill: "Dart",
                    ),
                  ],
                ),
                SizedBox(height: 10),
                MyButtons(
                  text1: "View Details",
                  text2: "Source Code",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
