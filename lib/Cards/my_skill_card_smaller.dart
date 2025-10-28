import 'package:flutter/material.dart';

class MySkillCardSmaller extends StatefulWidget {
  final String skill;
  final IconData? icon;
  const MySkillCardSmaller({
    super.key,
    required this.skill,
    this.icon,
  });

  @override
  State<MySkillCardSmaller> createState() =>
      _MySkillCardState();
}

class _MySkillCardState
    extends State<MySkillCardSmaller> {
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
      child: AnimatedScale(
        scale: _isLift ? 1.08 : 1,
        duration: Duration(milliseconds: 200),
        child: Material(
          color: Color(0xffDAC6B0),
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
              vertical: 4,
              horizontal: 8,
            ),
            child: Row(
              children: [
                widget.icon != null
                    ? Icon(widget.icon, size: 16)
                    : SizedBox.shrink(),
                Text(
                  widget.skill,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
