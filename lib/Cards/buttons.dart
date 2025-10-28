import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  final String text1;
  final String text2;
  const MyButtons({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  State<MyButtons> createState() =>
      _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  Color color1 = Color(0xffDDD4CB);
  Color color2 = Color(0xff3D2D1B);

  void _isButtonHowered(bool buttonHowered) {
    setState(() {
      color1 = buttonHowered
          ? Colors.transparent
          : Color(0xffDDD4CB);
      color2 = buttonHowered
          ? Color(0xffEDD4CB)
          : Color(0xff3D2D1B);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30,
      mainAxisAlignment:
          MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16,
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF704E36),
                  Color(0xFFC3775A),
                ],
              ),
            ),

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color1,
                shadowColor: color1,
                side: BorderSide(
                  width: 1,
                  color: Color(0xFF3D2D1B),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16),
                ),
              ),
              onHover: (howered) {
                _isButtonHowered(howered);
              },

              onPressed: () {},
              child: Text(
                widget.text1,
                style: TextStyle(
                  fontSize: 18,
                  color: color2,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16,
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF704E36),
                  Color(0xFFC3775A),
                ],
              ),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {},
              child: Text(
                widget.text2,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffEDD4CB),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
