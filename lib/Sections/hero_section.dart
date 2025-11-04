import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_site/Variables_Functions/scroll_function.dart';
import 'package:portfolio_site/Variables_Functions/url_opening_function.dart';

class MyHeroSection extends StatelessWidget {
  final GlobalKey projectKey;
  final double height;
  final double width;
  const MyHeroSection({
    super.key,
    required this.projectKey,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: height,
            maxHeight: height,
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFE8D5C4),
                  Color(0xFFDDD4CB),
                  Color.fromARGB(
                    120,
                    212,
                    166,
                    116,
                  ),
                ],
                stops: [0.0, 0.5, 1.0],
              ),
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  children: [
                    width < height
                        ? Column(
                            children: [
                              Text(
                                "Saurabh Kumar",
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontSize:
                                      constraints
                                          .maxWidth *
                                      0.09,
                                  fontWeight:
                                      FontWeight
                                          .bold,
                                  height: 1.15,
                                  foreground: Paint()
                                    ..shader =
                                        const LinearGradient(
                                          colors: [
                                            Color(
                                              0xff4C2D20,
                                            ),
                                            Color(
                                              0xffB26544,
                                            ),
                                          ],
                                        ).createShader(
                                          Rect.fromLTWH(
                                            0,
                                            0,
                                            constraints
                                                .maxWidth,
                                            constraints
                                                .maxHeight,
                                          ),
                                        ),
                                ),
                              ),
                              Text(
                                "Vishwakarma",
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontSize:
                                      constraints
                                          .maxWidth *
                                      0.09,
                                  fontWeight:
                                      FontWeight
                                          .bold,
                                  height: 1.15,
                                  foreground: Paint()
                                    ..shader =
                                        const LinearGradient(
                                          colors: [
                                            Color(
                                              0xff4C2D20,
                                            ),
                                            Color(
                                              0xffB26544,
                                            ),
                                          ],
                                        ).createShader(
                                          Rect.fromLTWH(
                                            0,
                                            0,
                                            constraints
                                                .maxWidth,
                                            constraints
                                                .maxHeight,
                                          ),
                                        ),
                                ),
                              ),
                            ],
                          )
                        : Text(
                            "Saurabh Kumar Vishwakarma",
                            style: TextStyle(
                              wordSpacing: 5,
                              fontSize:
                                  constraints
                                      .maxWidth *
                                  0.06,
                              fontWeight:
                                  FontWeight.bold,
                              height: 1.15,
                              foreground: Paint()
                                ..shader =
                                    const LinearGradient(
                                      colors: [
                                        Color(
                                          0xff4C2D20,
                                        ),
                                        Color(
                                          0xffB26544,
                                        ),
                                      ],
                                    ).createShader(
                                      Rect.fromLTWH(
                                        0,
                                        0,
                                        constraints
                                            .maxWidth,
                                        constraints
                                            .maxHeight,
                                      ),
                                    ),
                            ),
                          ),

                    SizedBox(
                      height:
                          constraints.maxHeight *
                          0.025,
                    ),

                    Text(
                      "Flutter App Developer",
                      style: TextStyle(
                        fontSize:
                            constraints.maxWidth *
                            0.033,
                        fontWeight:
                            FontWeight.w500,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(
                      height:
                          constraints.maxHeight *
                          0.029,
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      displayFullTextOnTap: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "Building beautiful, scalable, and high-performance apps.",
                          textStyle: TextStyle(
                            fontSize:
                                constraints
                                    .maxWidth *
                                0.025,
                            fontWeight:
                                FontWeight.w500,
                            color: Color(
                              0xff5D4D3D,
                            ),
                          ),
                          cursor: '|',
                          curve:
                              Curves.bounceInOut,
                          speed: Duration(
                            milliseconds: 100,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height:
                          constraints.maxHeight *
                          0.029,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        Container(
                          height: 50,
                          width: 255,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(
                                  12,
                                ),
                            gradient:
                                LinearGradient(
                                  colors: [
                                    Color(
                                      0xFF704E37,
                                    ),
                                    Color(
                                      0xFFD4BCAB,
                                    ),
                                  ],
                                ),
                          ),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 1,
                                color: Color(
                                  0xFF121212,
                                ),
                              ),
                              backgroundColor:
                                  Colors
                                      .transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(
                                      12,
                                    ),
                              ),
                            ),
                            onPressed: () {
                              openUrl(
                                'https://drive.google.com/file/d/1AUV-Omnl44wTdHz_wW0xITnwYTGq1jjz/view?usp=drive_link',
                              );
                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: [
                                Icon(
                                  Icons
                                      .file_download,
                                  size: 15,
                                  color: Color(
                                    0xFFE8D5C4,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Download Resume",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(
                                      0xFFE8D5C4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 50,
                          width: 255,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 2,
                                color: Color(
                                  0xFFA0522D,
                                ),
                              ),

                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(
                                      12,
                                    ),
                              ),
                            ),
                            onPressed: () {
                              scrollToProjectsPosition(
                                projectKey,
                              );
                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: [
                                Icon(
                                  Icons
                                      .badge_outlined,
                                  size: 15,
                                  color: Color(
                                    0xFF121212,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "View Projects",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(
                                      0xFF121212,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
