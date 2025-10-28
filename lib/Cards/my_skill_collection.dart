import 'package:flutter/material.dart';
import 'package:portfolio_site/Cards/my_skill_col.dart';

class MyIntroCard extends StatefulWidget {
  const MyIntroCard({super.key});

  @override
  State<MyIntroCard> createState() =>
      _MyIntroCardState();
}

class _MyIntroCardState
    extends State<MyIntroCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shadowColor: Color(0xff121212),
      color: Color(0xffDDD4CB),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadiusGeometry.circular(32),
        side: BorderSide(
          width: 1,
          color: Color(0xff8D735C),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          32,
          20,
          32,
          32,
        ),
        child: Column(
          spacing: 10,
          mainAxisAlignment:
              MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              "Frontend",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color(0xff3D2D1B),
              ),
            ),
            SizedBox(height: 20),
            MySkillCol(
              color1: Color(0xff825034),
              color2: Color(0xffB86C4C),
              icon: Icons.phone_android,
              skill: "Flutter",
              progress: 90,
            ),
            MySkillCol(
              color2: Color(0xff825034),
              color1: Color(0xffB86C4C),
              icon: Icons.code,
              skill: "Dart",
              progress: 90,
            ),
          ],
        ),
      ),
    );
  }
}
