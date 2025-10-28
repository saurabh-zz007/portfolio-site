import 'package:flutter/material.dart';

class MyHorizontalEducationCard
    extends StatefulWidget {
  final String course;
  final String date;
  final String collegeName;
  final String? branch;
  final String description;
  final IconData icon;
  const MyHorizontalEducationCard({
    super.key,
    required this.description,
    required this.collegeName,
    required this.course,
    required this.date,
    this.branch,
    required this.icon,
  });

  @override
  State<MyHorizontalEducationCard>
  createState() =>
      _MyHorizontalEducationCardState();
}

class _MyHorizontalEducationCardState
    extends State<MyHorizontalEducationCard> {
  bool _isFocused = false;
  double x = 0;
  double ele = 8;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isFocused = true;
          x = 2;
          ele = 20;
        });
      },
      onExit: (event) {
        setState(() {
          _isFocused = false;
          x = 0;
          ele = 8;
        });
      },
      child: AnimatedScale(
        scale: _isFocused ? 1.01 : 1,
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
                child: Row(
                  spacing: 25,

                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    AnimatedScale(
                      scale: _isFocused ? 1.1 : 1,
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
                    Flexible(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        spacing: 10,
                        children: [
                          Text(
                            widget.course,
                            style: TextStyle(
                              color: Color(
                                0xFFB26F53,
                              ),
                              fontSize: 28,
                            ),
                          ),
                          if (widget.branch !=
                              null)
                            Text(
                              widget.branch!,
                              style: TextStyle(
                                color: Color(
                                  0xff605141,
                                ),
                                fontSize: 28,
                              ),
                            ),
                          Row(
                            spacing: 5,
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .start,
                            crossAxisAlignment:
                                CrossAxisAlignment
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

                              Text(
                                widget.date,
                                style: TextStyle(
                                  color: Color(
                                    0xff605141,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 20),
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
                                  widget
                                      .collegeName,
                                  style: TextStyle(
                                    color: Color(
                                      0xff605141,
                                    ),
                                    fontSize: 16,
                                  ),
                                  softWrap: false,
                                  overflow:
                                      TextOverflow
                                          .ellipsis,
                                ),
                              ),
                            ],
                          ),

                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(
                                        16,
                                      ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(
                                        0xffC4785B,
                                      ),
                                      Color(
                                        0xffDDD4CB,
                                      ),
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(
                                        5.0,
                                        0,
                                        0,
                                        0,
                                      ),
                                  child: AnimatedContainer(
                                    duration:
                                        Duration(
                                          milliseconds:
                                              200,
                                        ),
                                    transform:
                                        Matrix4.translationValues(
                                          x,
                                          x,
                                          x,
                                        ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(
                                              16,
                                            ),
                                        gradient: LinearGradient(
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
                                        padding: const EdgeInsets.symmetric(
                                          horizontal:
                                              20,
                                          vertical:
                                              15,
                                        ),
                                        child: Text(
                                          widget
                                              .description,
                                          style: TextStyle(
                                            color: Color(
                                              0xff605141,
                                            ),
                                            fontSize:
                                                18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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
