import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_site/home_page.dart';

class MySplashScreen2 extends StatefulWidget {
  const MySplashScreen2({super.key});

  @override
  State<MySplashScreen2> createState() =>
      _MySplashScreen2State();
}

bool isPushed = false;

class _MySplashScreen2State
    extends State<MySplashScreen2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(
      context,
    ).size.width;

    final horizontalPadding = width < 500
        ? 30.0
        : width < 700
        ? 60
        : width < 1000
        ? 120
        : 200;

    final nameFontSize = width < 500
        ? 28
        : width < 700
        ? 36
        : 42;

    final descFontSize = width < 500
        ? 14
        : width < 700
        ? 16
        : 18;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF3E1D0),
              Color(0xFFE6D3C3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: horizontalPadding
                .toDouble(),
          ),
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: isPushed ? 0.0 : 1.0,
            child: AnimatedContainer(
              duration: Duration(
                milliseconds: 300,
              ),
              transform:
                  Matrix4.translationValues(
                    isPushed ? 300 : 0,
                    0,
                    0,
                  ),
              child: Material(
                color: Color.fromRGBO(
                  255,
                  255,
                  255,
                  0.4,
                ),

                elevation: 8,
                shadowColor: Color.fromRGBO(
                  62,
                  31,
                  31,
                  0.15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(32),
                  side: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(
                      255,
                      255,
                      255,
                      0.2,
                    ),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/Animations/work.json',
                        width:
                            nameFontSize
                                .toDouble() *
                            8,
                        height:
                            nameFontSize
                                .toDouble() *
                            7,
                        repeat: true,
                        reverse: true,
                      ),
                      Text(
                        "I'am Saurabh",
                        style: TextStyle(
                          fontSize: nameFontSize
                              .toDouble(),
                        ),
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            textAlign:
                                TextAlign.center,
                            'A Flutter Developer and a Competitive Programmer',
                            textStyle: TextStyle(
                              fontSize:
                                  descFontSize
                                      .toDouble(),
                              color: Color(
                                0xff5D4D3D,
                              ),
                            ),
                            speed: Duration(
                              milliseconds: 50,
                            ),
                            cursor: "|",
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isPushed = true;
                          });
                          Timer(
                            Duration(
                              milliseconds: 200,
                            ),
                            () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          MyHomePage(),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient:
                                LinearGradient(
                                  colors: [
                                    Color(
                                      0xff3D2D1B,
                                    ),
                                    Color(
                                      0xff8D735C,
                                    ),
                                  ],
                                  begin: Alignment
                                      .topLeft,
                                  end: Alignment
                                      .bottomRight,
                                ),
                            borderRadius:
                                BorderRadius.circular(
                                  16,
                                ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal:
                                      24.0,
                                ),
                            child: Text(
                              "Lets Begin",
                              style: TextStyle(
                                fontSize:
                                    nameFontSize
                                        .toDouble() *
                                    0.5,
                                color: Color(
                                  0xffDDD4CB,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
