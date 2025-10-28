import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MySkillCol extends StatefulWidget {
  final String skill;
  final IconData icon;
  final Color color1;
  final Color color2;
  final double progress;

  const MySkillCol({
    super.key,
    required this.color1,
    required this.color2,
    required this.icon,
    required this.skill,
    required this.progress,
  });

  @override
  State<MySkillCol> createState() =>
      _MySkillColState();
}

class _MySkillColState extends State<MySkillCol> {
  bool _isZoomed = false;
  double val = 0;
  void _animate(bool visible) {
    setState(() {
      val = visible ? widget.progress : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.skill),
      onVisibilityChanged: (info) {
        if (info.visibleFraction < 1) {
          _animate(false);
        } else {
          _animate(true);
        }
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            _isZoomed = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isZoomed = false;
            val = widget.progress;
          });
        },
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          spacing: 15,
          children: [
            Row(
              spacing: 15,

              children: [
                AnimatedScale(
                  scale: _isZoomed ? 1.1 : 1,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(
                            100,
                          ),
                      gradient: LinearGradient(
                        colors: [
                          widget.color1,
                          widget.color2,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.all(
                            8.0,
                          ),
                      child: Icon(
                        widget.icon,
                        color: Color(0xffE8D5C4),
                        size: 30,
                      ),
                    ),
                  ),
                ),

                Text(
                  widget.skill,
                  style: TextStyle(
                    color: Color(0xff974C1B),
                    fontSize: 20,
                  ),
                ),
                const Spacer(),

                Text(
                  "${widget.progress}%",
                  style: TextStyle(
                    color: Color(0xff974C1B),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
            TweenAnimationBuilder(
              tween: Tween(
                begin: 0,
                end: val / 100,
              ),
              curve: Curves.decelerate,
              duration: Duration(seconds: 1),
              builder: (context, value, child) {
                return LinearProgressIndicator(
                  value: value.toDouble(),
                  minHeight: 10,
                  borderRadius:
                      BorderRadius.circular(16),
                  backgroundColor: Color(
                    0xffD5C9BC,
                  ),
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
