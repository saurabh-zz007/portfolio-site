import 'package:flutter/material.dart';
import 'package:portfolio_site/Variables_Functions/url_opening_function.dart';

final List<Widget> footer = [
  Container(
    alignment: AlignmentGeometry.center,
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      gradient: LinearGradient(
        colors: [
          Color(0xFFB98B6E),
          Color(0xFFCE9F73),
        ],
      ),
    ),

    child: Text(
      "S",
      style: TextStyle(
        color: Color(0xffDDD4CB),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  SizedBox(height: 15),
  Text(
    "© 2025 Saurabh Kumar Vishwakarma. Made with ❤️ and ☕",
    style: TextStyle(fontSize: 16),
    textAlign: TextAlign.center,
  ),
  SizedBox(height: 15),
  Text(
    "Built with Flutter-inspired design principles",
    style: TextStyle(
      fontSize: 14,
      color: Color(0xFF5D4F3F),
    ),
    textAlign: TextAlign.center,
  ),
  SizedBox(height: 10),
  Row(
    spacing: 15,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        onPressed: () => openUrl(
          'https://github.com/saurabh-zz007',
        ),
        child: Text(
          "GitHub",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
      TextButton(
        onPressed: () => openUrl(
          'https://www.linkedin.com/in/saurabh-zz007',
        ),
        child: Text(
          "LinkedIn",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
      TextButton(
        onPressed: () => openUrl(
          'mailto:saurabh.vishw.007@gmail.com?subject=Subject&body=Body',
        ),
        child: Text(
          "E-Mail",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    ],
  ),
];
