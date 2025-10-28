import 'package:flutter/material.dart';

import 'package:platform_detector/platform_detector.dart';
import 'package:portfolio_site/Variables_Functions/url_opening_function.dart';

class MyCard extends StatefulWidget {
  final String text1;
  final String text2;
  final IconData icon;
  final Color color1;
  final Color color2;
  final Color iconColor;
  final String? url;
  const MyCard({
    super.key,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.color1,
    required this.color2,
    required this.iconColor,
    this.url,
  });

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  double _ele = 8;
  bool _isZoomed = false;

  final isMobile = PlatformDetector.platform
      .byName<bool>(
        defaultValue: false,
        android: true,
        iOS: true,
        webAndroid: true,
        webIOS: true,
      );

  @override
  Widget build(BuildContext context) {
    Widget card = TweenAnimationBuilder(
      tween: Tween(begin: 8.0, end: _ele),
      duration: Duration(milliseconds: 200),
      builder: (context, value, child) {
        return AnimatedScale(
          scale: _isZoomed ? 1.01 : 1,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                32,
              ),
              side: BorderSide(
                color: Color(0xFF8D735C),
                width: 1,
              ),
            ),
            elevation: value,
            shadowColor: Color(0xFF121212),

            child: child,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          spacing: 10,
          children: [
            SizedBox(width: 0),
            AnimatedScale(
              scale: _isZoomed ? 1.1 : 1,
              duration: Duration(
                milliseconds: 200,
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      widget.color1,
                      widget.color2,
                    ],
                  ),
                ),

                child: Icon(
                  widget.icon,
                  color: widget.iconColor,
                ),
              ),
            ),
            SizedBox(width: 0),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    widget.text1,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                  Text(
                    widget.text2,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF5D4F3F),
                    ),
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                  SizedBox(width: 0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    if (isMobile) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _isZoomed == true
                ? _isZoomed = false
                : _isZoomed = true;
            _ele == 20 ? _ele = 8 : _ele = 20;
          });
          if (widget.url != null) {
            openUrl(widget.url!);
          }
        },
        onLongPressStart: (details) {
          setState(() {
            _isZoomed = true;
            _ele = 20;
          });
        },
        onLongPressEnd: (details) {
          setState(() {
            _isZoomed = false;
            _ele = 8;
          });
        },

        child: card,
      );
    } else {
      return GestureDetector(
        onTap: () => widget.url != null
            ? openUrl(widget.url!)
            : null,
        child: MouseRegion(
          cursor: widget.url != null
              ? SystemMouseCursors.click
              : MouseCursor.defer,

          onHover: (event) {
            setState(() {
              _ele = 20;
              _isZoomed = true;
            });
          },
          onExit: (event) {
            setState(() {
              _ele = 8;
              _isZoomed = false;
            });
          },

          child: card,
        ),
      );
    }
  }
}
