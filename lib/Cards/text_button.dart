import 'package:flutter/material.dart';
import 'package:portfolio_site/Variables_Functions/scroll_function.dart';

class MyTextButton extends StatefulWidget {
  final String text;
  final GlobalKey widgetkey;
  const MyTextButton({
    super.key,
    required this.text,
    required this.widgetkey,
  });

  @override
  State<MyTextButton> createState() =>
      _MyTextButtonState();
}

class _MyTextButtonState
    extends State<MyTextButton> {
  bool _isHowered = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => scrollToProjectsPosition(
        widget.widgetkey,
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,

        onEnter: (_) {
          setState(() => _isHowered = true);
        },
        onExit: (_) {
          setState(() => _isHowered = false);
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: _isHowered
                    ? Color(0xff121212)
                    : Colors.transparent,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 20,
                color: _isHowered
                    ? Color(0xff121212)
                    : Color(0xff8D735C),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
