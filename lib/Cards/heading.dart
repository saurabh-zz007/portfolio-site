import 'package:flutter/material.dart';

class MyHeading extends StatelessWidget {
  final String text1;
  final String? text2;
  final IconData? icon;
  const MyHeading({
    super.key,
    required this.text1,
    this.text2,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center,
      children: [
        SizedBox(height: 200),
        if (icon != null)
          Icon(
            icon!,
            size: 60,
            color: Color(0xffC4785B),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            16,
            0,
            16,
            0,
          ),
          child: Text(
            text1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              foreground: Paint()
                ..shader =
                    LinearGradient(
                      colors: [
                        Color(0xff6F3D26),
                        Color(0xffAB5E3C),
                      ],
                    ).createShader(
                      Rect.fromLTWH(
                        50,
                        0,
                        50,
                        25,
                      ),
                    ),
            ),
            textAlign: TextAlign.center,
            //softWrap: false,
            //overflow: TextOverflow.fade,
          ),
        ),
        SizedBox(height: 10),
        if (text2 != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(
              16,
              0,
              16,
              0,
            ),
            child: Text(
              text2!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
        SizedBox(height: 20),
      ],
    );
  }
}
