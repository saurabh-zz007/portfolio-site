import 'package:flutter/material.dart';
import 'package:portfolio_site/Cards/card_intro.dart';

final List<Widget> contactCard = [
  MyCard(
    iconColor: Color(0xffE8D5C4),
    icon: Icons.phone_outlined,
    text1: "Phone no.",
    text2: "+91-6387945257",
    color1: Color(0xFFD19C6F),
    color2: Color(0xFFA95B38),
    url: 'tel:+91 6387945257',
  ),
  MyCard(
    iconColor: Color(0xffE8D5C4),
    icon: Icons.email_outlined,
    text1: "E-mail",
    text2: "saurabh.vishw.007@gmail.com",
    color1: Color(0xFF7E563D),
    color2: Color(0xFFB26F53),
    url:
        'mailto:saurabh.vishw.007@gmail.com?subject=Subject&body=Body',
  ),
  MyCard(
    iconColor: Color(0xffE8D5C4),
    icon: Icons.card_travel_rounded,
    text1: "GitHub",
    text2: "github.com/saurabh-zz007",
    color1: Color(0xFFB98B6E),
    color2: Color(0xFFCE9F73),
    url: 'https://github.com/saurabh-zz007',
  ),
  MyCard(
    iconColor: Color(0xffE8D5C4),
    icon: Icons.linked_camera_outlined,
    text1: "LinkedIn",
    text2: "linkedin.com/in/saurabh-zz007",
    color1: Color(0xFF7E563D),
    color2: Color(0xFFB26F53),
    url:
        'https://www.linkedin.com/in/saurabh-zz007',
  ),
];
