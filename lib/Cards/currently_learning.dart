import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_site/Cards/my_skill_card_smaller.dart';

class MyCurrentlyLearning extends StatefulWidget {
  final String heading;
  final String description;
  final String coverImage;
  final String date;

  const MyCurrentlyLearning({
    super.key,
    required this.heading,
    required this.description,
    required this.coverImage,
    required this.date,
  });

  @override
  State<MyCurrentlyLearning> createState() =>
      _MyCurrentlyLearningState();
}

class _MyCurrentlyLearningState
    extends State<MyCurrentlyLearning> {
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
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 24,
                      left: 24,
                      child: MySkillCardSmaller(
                        skill: widget.date,
                        icon:
                            Icons.calendar_today,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                child: Text(
                  widget.heading,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                child: Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5D4F3F),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
