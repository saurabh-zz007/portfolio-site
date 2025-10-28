import 'package:flutter/material.dart';

class MySkillCard extends StatefulWidget {
  final String skill;
  const MySkillCard({
    super.key,
    required this.skill,
  });

  @override
  State<MySkillCard> createState() =>
      _MySkillCardState();
}

class _MySkillCardState
    extends State<MySkillCard> {
  bool _isLift = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isLift = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isLift = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: Matrix4.translationValues(
          0,
          _isLift ? -5 : 0,
          0,
        ),
        curve: Curves.easeOut,
        child: AnimatedScale(
          scale: _isLift ? 1.08 : 1,
          duration: Duration(milliseconds: 200),
          child: Material(
            elevation: 8,
            shadowColor: Color(0xff121212),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Color(0xff8D735C),
              ),
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                widget.skill,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
