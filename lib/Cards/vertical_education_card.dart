import 'package:flutter/material.dart';

class MyVerticalEducationCard
    extends StatefulWidget {
  final String course;
  final String date;
  final String collegeName;
  final String? branch;
  final String description;
  final IconData icon;
  const MyVerticalEducationCard({
    super.key,
    required this.description,
    required this.collegeName,
    required this.course,
    required this.date,
    this.branch,
    required this.icon,
  });

  @override
  State<MyVerticalEducationCard> createState() =>
      _MyVerticalEducationCard();
}

class _MyVerticalEducationCard
    extends State<MyVerticalEducationCard> {
  bool _isZoomed = false;
  double x = 0;
  double ele = 8;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isZoomed = true;
          x = 5;
          ele = 20;
        });
      },
      onExit: (event) {
        setState(() {
          _isZoomed = false;
          x = 0;
          ele = 8;
        });
      },
      child: AnimatedScale(
        scale: _isZoomed ? 1.01 : 1,
        duration: Duration(milliseconds: 200),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Material(
            elevation: ele,

            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Color(0xFF8D735C),
              ),
              borderRadius:
                  BorderRadiusGeometry.circular(
                    32,
                  ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(
                  28.0,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  spacing: 15,
                  children: [
                    AnimatedScale(
                      scale: _isZoomed ? 1.1 : 1,
                      duration: Duration(
                        milliseconds: 200,
                      ),
                      child: Container(
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(
                                28,
                              ),
                          gradient:
                              LinearGradient(
                                colors: [
                                  Color(
                                    0xFF7E563D,
                                  ),
                                  Color(
                                    0xFFB26F53,
                                  ),
                                ],
                              ),
                        ),
                        child: Icon(
                          widget.icon,
                          size: 50,
                        ),
                      ),
                    ),
                    Text(
                      widget.course,
                      style: TextStyle(
                        color: Color(0xFFB26F53),
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (widget.branch != null)
                      Text(
                        widget.branch!,
                        style: TextStyle(
                          color: Color(
                            0xff605141,
                          ),
                          fontSize: 18,
                        ),
                        textAlign:
                            TextAlign.center,
                      ),
                    Row(
                      spacing: 5,
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                      children: [
                        Icon(
                          Icons
                              .calendar_month_outlined,
                          size: 20,
                          color: Color(
                            0xFFB26F53,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          widget.date,
                          style: TextStyle(
                            color: Color(
                              0xff605141,
                            ),
                            fontSize: 16,
                          ),
                          textAlign:
                              TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      spacing: 5,
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                      children: [
                        Icon(
                          Icons
                              .location_on_outlined,
                          size: 20,
                          color: Color(
                            0xFFB26F53,
                          ),
                        ),

                        Flexible(
                          child: Text(
                            widget.collegeName,
                            style: TextStyle(
                              color: Color(
                                0xff605141,
                              ),
                              fontSize: 16,
                            ),
                            textAlign:
                                TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(
                              16,
                            ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffC4785B),
                            Color(0xffDDD4CB),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(
                              8.0,
                              0,
                              0,
                              0,
                            ),
                        child: AnimatedContainer(
                          duration: Duration(
                            milliseconds: 200,
                          ),
                          transform:
                              Matrix4.translationValues(
                                x,
                                x / 2,
                                x,
                              ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(
                                    16,
                                  ),
                              gradient:
                                  LinearGradient(
                                    colors: [
                                      Color(
                                        0xffDBC6B2,
                                      ),
                                      Color(
                                        0xffDDD4CB,
                                      ),
                                    ],
                                  ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(
                                    horizontal:
                                        25,
                                    vertical: 15,
                                  ),
                              child: Text(
                                widget
                                    .description,
                                style: TextStyle(
                                  color: Color(
                                    0xff605141,
                                  ),
                                  fontSize: 18,
                                ),
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
    );
  }
}
