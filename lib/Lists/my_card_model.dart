import 'package:flutter/material.dart';

class MyCardModel {
  final String text1;
  final String text2;
  final IconData icon;
  final Color color1;
  final Color color2;
  final Color iconColor;

  MyCardModel({
    required this.icon,
    required this.text1,
    required this.text2,
    required this.color1,
    required this.color2,
    required this.iconColor,
  });
}

List<MyCardModel> myCardsList = [
  MyCardModel(
    iconColor: const Color(0xffE8D5C4),
    icon: Icons.lightbulb_outline,
    text1: "Creativity",
    text2:
        "Innovative solution to complex problems",
    color1: const Color(0xFFD19C6F),
    color2: const Color(0xFFC4795C),
  ),
  MyCardModel(
    iconColor: const Color(0xffE8D5C4),
    icon: Icons.code,
    text1: "App logic",
    text2: "Clean, Scalable, and Efficient code",
    color1: const Color(0xFF7E5035),
    color2: const Color(0xFFBC6F51),
  ),
  MyCardModel(
    iconColor: const Color(0xffE8D5C4),
    icon: Icons.color_lens_outlined,
    text1: "Design thinking",
    text2: "User-centered beautiful interface",
    color1: const Color(0xFFBF906F),
    color2: const Color(0xFFE3C9AF),
  ),
];
