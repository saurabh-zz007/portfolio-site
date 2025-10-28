import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:portfolio_site/Cards/text_button.dart';

import 'package:portfolio_site/Lists/beyond_code_skill_list.dart';

import 'package:portfolio_site/Cards/card_intro.dart';
import 'package:portfolio_site/Lists/contact_card_list.dart';
import 'package:portfolio_site/Lists/currently_learning_list.dart';
import 'package:portfolio_site/Variables_Functions/desciption.dart';
import 'package:portfolio_site/Sections/footer_content.dart';
import 'package:portfolio_site/Cards/horizontal_education_card.dart';
import 'package:portfolio_site/Lists/my_project_list.dart';

import 'package:portfolio_site/Cards/vertical_education_card.dart';
import 'package:portfolio_site/Cards/heading.dart';
import 'package:portfolio_site/Cards/my_skill_collection.dart';
import 'package:portfolio_site/Cards/my_skill_collection2.dart';
import 'package:portfolio_site/Cards/my_skill_card.dart';
import 'package:portfolio_site/Variables_Functions/scroll_function.dart';
import 'package:portfolio_site/Variables_Functions/url_opening_function.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scrollController = ScrollController();
  final _myProjectKey = GlobalKey();
  final _myAboutKey = GlobalKey();
  final _mySkillKey = GlobalKey();
  final _myHomePage = GlobalKey();
  final _myContactPage = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(
      context,
    ).size.width;
    final height = MediaQuery.of(
      context,
    ).size.height;

    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          elevation: 8,
          backgroundColor: Color.fromRGBO(
            255,
            255,
            255,
            0.8,
          ),
          shadowColor: Color.fromRGBO(
            0,
            0,
            0,
            0.5,
          ),
          shape: Border.all(
            width: 1,
            color: Color(0xFF3D2D1B),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            children: [
              SizedBox(height: 50),
              MyTextButton(
                text: "Home",
                widgetkey: _myHomePage,
              ),
              MyTextButton(
                text: "About",
                widgetkey: _myAboutKey,
              ),
              MyTextButton(
                text: "Skills",
                widgetkey: _mySkillKey,
              ),
              MyTextButton(
                text: "Projects",
                widgetkey: _myProjectKey,
              ),
              MyTextButton(
                text: "Contact",
                widgetkey: _myContactPage,
              ),
              SizedBox(height: 10),

              Text(
                "Built with Flutter-inspired design principles",
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF5D4F3F),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Row(
                spacing: 15,
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => openUrl(
                      'https://github.com/saurabh-zz007',
                    ),
                    child: Text(
                      "GitHub",
                      style: TextStyle(
                        fontWeight:
                            FontWeight.w400,
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
                        fontWeight:
                            FontWeight.w400,
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
                        fontWeight:
                            FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            width >= height
                ? Lottie.asset(
                    'assets/Animations/Moving.json',
                    height: height,
                    width: width,
                    reverse: true,
                  )
                : RotatedBox(
                    quarterTurns: 1,
                    child: Center(
                      child: Lottie.asset(
                        'assets/Animations/Moving.json',
                        height: height,
                        width: width,

                        reverse: true,
                      ),
                    ),
                  ),
            SingleChildScrollView(
              controller: _scrollController,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(
                                  minHeight:
                                      height,
                                  maxHeight:
                                      height,
                                ),
                            child: Container(
                              height:
                                  double.infinity,
                              width:
                                  double.infinity,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment
                                      .topRight,
                                  end: Alignment
                                      .bottomLeft,
                                  colors: [
                                    Color(
                                      0xFFE8D5C4,
                                    ),
                                    Color(
                                      0xFFDDD4CB,
                                    ),
                                    Color.fromARGB(
                                      120,
                                      212,
                                      166,
                                      116,
                                    ),
                                  ],
                                  stops: [
                                    0.0,
                                    0.5,
                                    1.0,
                                  ],
                                ),
                              ),
                              child: LayoutBuilder(
                                builder:
                                    (
                                      context,
                                      constraints,
                                    ) {
                                      return Column(
                                        key:
                                            _myHomePage,
                                        mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                        children: [
                                          width <
                                                  height
                                              ? Column(
                                                  children: [
                                                    Text(
                                                      "Saurabh Kumar",
                                                      style: TextStyle(
                                                        wordSpacing: 5,
                                                        fontSize:
                                                            constraints.maxWidth *
                                                            0.09,
                                                        fontWeight: FontWeight.bold,
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
                                                                  constraints.maxWidth,
                                                                  constraints.maxHeight,
                                                                ),
                                                              ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Vishwakarma",
                                                      style: TextStyle(
                                                        wordSpacing: 5,
                                                        fontSize:
                                                            constraints.maxWidth *
                                                            0.09,
                                                        fontWeight: FontWeight.bold,
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
                                                                  constraints.maxWidth,
                                                                  constraints.maxHeight,
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
                                                        constraints.maxWidth *
                                                        0.06,
                                                    fontWeight: FontWeight.bold,
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
                                                              constraints.maxWidth,
                                                              constraints.maxHeight,
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
                                              height:
                                                  1.5,
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                                constraints.maxHeight *
                                                0.029,
                                          ),
                                          AnimatedTextKit(
                                            repeatForever:
                                                true,
                                            displayFullTextOnTap:
                                                true,
                                            animatedTexts: [
                                              TypewriterAnimatedText(
                                                "Building beautiful, scalable, and high-performance apps.",
                                                textStyle: TextStyle(
                                                  fontSize:
                                                      constraints.maxWidth *
                                                      0.025,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(
                                                    0xff5D4D3D,
                                                  ),
                                                ),
                                                cursor: '|',
                                                curve: Curves.bounceInOut,
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
                                            direction:
                                                Axis.horizontal,
                                            spacing:
                                                20,
                                            runSpacing:
                                                20,
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 255,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(
                                                    12,
                                                  ),
                                                  gradient: LinearGradient(
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
                                                    backgroundColor: Colors.transparent,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(
                                                        12,
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    openUrl(
                                                      'https://flutter.dev',
                                                    );
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.file_download,
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
                                                      borderRadius: BorderRadius.circular(
                                                        12,
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    scrollToProjectsPosition(
                                                      _myProjectKey,
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Icon(
                                                        Icons.badge_outlined,
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
                      ),
                      Container(
                        alignment:
                            Alignment.center,

                        width: double.infinity,
                        child: Column(
                          children: [
                            MyHeading(
                              key: _myAboutKey,
                              text1: "About Me",
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.all(
                                    16.0,
                                  ),
                              child:
                                  constraints
                                          .maxWidth <
                                      1200
                                  ? Column(
                                      spacing: 25,
                                      children: [
                                        Material(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              32,
                                            ),
                                            side: BorderSide(
                                              color: Color(
                                                0xFF8D735C,
                                              ),
                                              width:
                                                  1,
                                            ),
                                          ),
                                          elevation:
                                              8,
                                          shadowColor:
                                              Color(
                                                0xFF121212,
                                              ),

                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                              32.0,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  description,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        MyCard(
                                          iconColor:
                                              Color(
                                                0xffE8D5C4,
                                              ),
                                          icon: Icons
                                              .lightbulb_outline,
                                          text1:
                                              "Creativity",
                                          text2:
                                              "Innovative solution to complex problems",
                                          color1: Color(
                                            0xFFD19C6F,
                                          ),
                                          color2: Color(
                                            0xFFC4795C,
                                          ),
                                        ),
                                        MyCard(
                                          iconColor:
                                              Color(
                                                0xffE8D5C4,
                                              ),
                                          icon: Icons
                                              .code,
                                          text1:
                                              "App logic",
                                          text2:
                                              'Clean, Scalable, and Effitient code',
                                          color1: Color(
                                            0xFF7E5035,
                                          ),
                                          color2: Color(
                                            0xFFBC6F51,
                                          ),
                                        ),
                                        MyCard(
                                          iconColor:
                                              Color(
                                                0xffE8D5C4,
                                              ),
                                          icon: Icons
                                              .color_lens_outlined,
                                          text1:
                                              "Design thinking",
                                          text2:
                                              "User- centered beautiful interface ",
                                          color1: Color(
                                            0xFFBF906F,
                                          ),
                                          color2: Color(
                                            0xFFE3C9AF,
                                          ),
                                        ),
                                      ],
                                    )
                                  : Row(
                                      spacing: 25,
                                      children: [
                                        Expanded(
                                          child: Material(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                32,
                                              ),
                                              side: BorderSide(
                                                color: Color(
                                                  0xFF8D735C,
                                                ),
                                                width: 1,
                                              ),
                                            ),
                                            elevation:
                                                8,
                                            shadowColor: Color(
                                              0xFF121212,
                                            ),

                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                25.0,
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    description,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          child: Column(
                                            spacing:
                                                20,
                                            children: [
                                              MyCard(
                                                icon: Icons.lightbulb_outline,
                                                text1: "Creativity",
                                                text2: "Innovative solution to complex problems",
                                                color1: Color(
                                                  0xFFD19C6F,
                                                ),
                                                color2: Color(
                                                  0xFFC4795C,
                                                ),
                                                iconColor: Color(
                                                  0xffE8D5C4,
                                                ),
                                              ),
                                              MyCard(
                                                icon: Icons.code,
                                                text1: "App logic",
                                                text2: 'Clean, Scalable, and Effitient code',
                                                color1: Color(
                                                  0xFF7E5035,
                                                ),
                                                color2: Color(
                                                  0xFFBC6F51,
                                                ),
                                                iconColor: Color(
                                                  0xffE8D5C4,
                                                ),
                                              ),
                                              MyCard(
                                                icon: Icons.color_lens_outlined,
                                                text1: "Design thinking",
                                                text2: "User- centered beautiful interface ",
                                                color1: Color(
                                                  0xFFBF906F,
                                                ),
                                                color2: Color(
                                                  0xFFE3C9AF,
                                                ),
                                                iconColor: Color(
                                                  0xffE8D5C4,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                            MyHeading(
                              text1: "Education",
                              icon: Icons
                                  .school_outlined,
                            ),
                            constraints.maxWidth >
                                    700
                                ? Column(
                                    children: [
                                      MyHorizontalEducationCard(
                                        collegeName:
                                            "Madan Mohan Malaviya University of Technology",
                                        branch:
                                            "Mechanical Engineering",
                                        date:
                                            "2023-2027",
                                        course:
                                            "Bachelor of Technology",
                                        description:
                                            "Though pursuing a B.Tech in Mechanical Engineering, I’m deeply focused on cross platform app development and competitive programming. I actively explore mobile app development using Flutter and continuously sharpen my problem-solving and algorithmic thinking through coding challenges.",
                                        icon: Icons
                                            .engineering_outlined,
                                      ),
                                      MyHorizontalEducationCard(
                                        description:
                                            "Completed higher secondary education with 74% marks, focusing on Physics, Chemistry, and Mathematics. Learned about Arduino and Raspberry Pi, exploring embedded systems and hardware programming through small personal projects involving sensors and robotics.",
                                        collegeName:
                                            "Gayatri Memorial Academy (CBSE)",
                                        course:
                                            "Class 12 (Intermediate)",
                                        date:
                                            "2021-2022",
                                        icon: Icons
                                            .biotech_outlined,
                                        branch:
                                            "Science Stream (PCM)",
                                      ),
                                      MyHorizontalEducationCard(
                                        description:
                                            "Completed secondary education with 87% marks, where I developed a strong interest in machines and electronics. Designed and built a basic robotic arm project using Arduino, which ignited my curiosity in automation and mechanical design.",
                                        collegeName:
                                            "Gayatri Memorial Academy (CBSE)",
                                        course:
                                            "Class 10 (Matriculation)",
                                        date:
                                            "2019-2020",
                                        icon: Icons
                                            .menu_book,
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      MyVerticalEducationCard(
                                        collegeName:
                                            "Madan Mohan Malaviya University of Technology",
                                        branch:
                                            "Mechanical Engineering",
                                        date:
                                            "2023-2027",
                                        course:
                                            "Bachelor of Technology",
                                        description:
                                            "Though pursuing a B.Tech in Mechanical Engineering, I’m deeply focused on cross platform app development and competitive programming. I actively explore mobile app development using Flutter and continuously sharpen my problem-solving and algorithmic thinking through coding challenges.",
                                        icon: Icons
                                            .design_services_outlined,
                                      ),
                                      MyVerticalEducationCard(
                                        description:
                                            "Completed higher secondary education with 74% marks, focusing on Physics, Chemistry, and Mathematics. Learned about Arduino and Raspberry Pi, exploring embedded systems and hardware programming through small personal projects involving sensors and robotics.",
                                        collegeName:
                                            "Gayatri Memorial Academy (CBSE)",
                                        course:
                                            "Class 12 (Intermediate)",
                                        date:
                                            "2021-2022",
                                        icon: Icons
                                            .biotech_outlined,
                                        branch:
                                            "Science Stream (PCM)",
                                      ),
                                      MyVerticalEducationCard(
                                        description:
                                            "Completed secondary education with 87% marks, where I developed a strong interest in machines and electronics. Designed and built a basic robotic arm project using Arduino, which ignited my curiosity in automation and mechanical design.",
                                        collegeName:
                                            "Gayatri Memorial Academy (CBSE)",
                                        course:
                                            "Class 10 (Matriculation)",
                                        date:
                                            "2019-2020",
                                        icon: Icons
                                            .menu_book,
                                      ),
                                    ],
                                  ),
                            Column(
                              children: [
                                MyHeading(
                                  key:
                                      _mySkillKey,
                                  text1:
                                      "Skills & Expertise",
                                  text2:
                                      "Technologies and tools I use to bring ideas to life",
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.all(
                                        16.0,
                                      ),
                                  child:
                                      constraints
                                              .maxWidth >
                                          700
                                      ? Row(
                                          spacing:
                                              36,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child:
                                                  MyIntroCard(),
                                            ),
                                            Flexible(
                                              child:
                                                  MyIntroCard2(),
                                            ),
                                          ],
                                        )
                                      : Column(
                                          spacing:
                                              16,
                                          children: [
                                            MyIntroCard(),
                                            MyIntroCard2(),
                                          ],
                                        ),
                                ),
                              ],
                            ),

                            SizedBox(height: 38),
                            Padding(
                              padding:
                                  const EdgeInsets.all(
                                    18.0,
                                  ),
                              child: Wrap(
                                spacing: 20,
                                runSpacing: 20,
                                alignment:
                                    WrapAlignment
                                        .center,
                                direction: Axis
                                    .horizontal,
                                children: [
                                  MySkillCard(
                                    skill:
                                        "Flutter",
                                  ),
                                  MySkillCard(
                                    skill: "Dart",
                                  ),

                                  MySkillCard(
                                    skill:
                                        "Firebase",
                                  ),
                                  MySkillCard(
                                    skill:
                                        "REST API",
                                  ),
                                  MySkillCard(
                                    skill: "Git",
                                  ),
                                  MySkillCard(
                                    skill: "C++",
                                  ),
                                  MySkillCard(
                                    skill:
                                        "Problem solving",
                                  ),
                                  MySkillCard(
                                    skill:
                                        "Competitive Programming",
                                  ),
                                ],
                              ),
                            ),
                            MyHeading(
                              key: _myProjectKey,
                              text1:
                                  "Featured Projects",
                              text2:
                                  "A showcase of my best work in mobile app development",
                            ),
                            constraints.maxWidth <
                                    700
                                ? Column(
                                    spacing: 10,
                                    children:
                                        projects,
                                  )
                                : Column(
                                    spacing: 10,
                                    children: [
                                      Row(
                                        spacing:
                                            10,
                                        children: [
                                          Flexible(
                                            child:
                                                projects[0],
                                          ),
                                          Flexible(
                                            child:
                                                projects[1],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        spacing:
                                            10,
                                        children: [
                                          Flexible(
                                            flex:
                                                1,
                                            child:
                                                projects[2],
                                          ),
                                          Flexible(
                                            flex:
                                                1,
                                            child:
                                                projects[3],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .center,
                              children: [
                                MyHeading(
                                  text1:
                                      "What I'm Currently Working On & Learning",
                                  text2:
                                      "Active projects and skills I'm developing to stay ahead in the ever-evolving tech landscape",
                                ),
                                constraints.maxWidth <
                                        700
                                    ? Column(
                                        spacing:
                                            10,
                                        children:
                                            currentlyLearningList,
                                      )
                                    : Column(
                                        children: [
                                          for (
                                            int
                                            i = 0;
                                            i <
                                                currentlyLearningList.length;
                                            i += 2
                                          )
                                            Row(
                                              spacing:
                                                  10,
                                              children: [
                                                Expanded(
                                                  child: currentlyLearningList[i],
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                i +
                                                            1 <
                                                        currentlyLearningList.length
                                                    ? Expanded(
                                                        child:
                                                            currentlyLearningList[i +
                                                                1],
                                                      )
                                                    : Expanded(
                                                        child: SizedBox(),
                                                      ),
                                              ],
                                            ),
                                        ],
                                      ),
                              ],
                            ),
                            MyHeading(
                              text1:
                                  "Beyond Coding",
                              text2:
                                  "Life outside the code editor - hobbies and interests that keep me balanced",
                            ),
                            constraints.maxWidth <
                                    1200
                                ? SingleChildScrollView(
                                    padding:
                                        EdgeInsets.symmetric(
                                          horizontal:
                                              16,
                                          vertical:
                                              40,
                                        ),
                                    scrollDirection:
                                        Axis.horizontal,
                                    child: Row(
                                      spacing: 20,
                                      children:
                                          beyondCodeSkill,
                                    ),
                                  )
                                : Padding(
                                    padding:
                                        const EdgeInsets.symmetric(
                                          horizontal:
                                              16,
                                          vertical:
                                              40,
                                        ),
                                    child: Wrap(
                                      alignment:
                                          WrapAlignment
                                              .center,
                                      runSpacing:
                                          20,
                                      spacing: 20,
                                      children:
                                          beyondCodeSkill,
                                    ),
                                  ),
                            MyHeading(
                              key: _myContactPage,
                              icon: Icons
                                  .telegram_outlined,
                              text1:
                                  "Let's Connect",
                              text2:
                                  "Have a project in mind or want to collaborate? Feel free to reach out!",
                            ),
                            constraints.maxWidth >
                                    700
                                ? Padding(
                                    padding:
                                        const EdgeInsets.all(
                                          16.0,
                                        ),
                                    child: Material(
                                      color: Color(
                                        0xffE1D5C9,
                                      ),
                                      elevation:
                                          8,
                                      shadowColor:
                                          Color(
                                            0xff121212,
                                          ),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width:
                                              1,
                                          color: Color(
                                            0xFF8D735C,
                                          ),
                                        ),
                                        borderRadius:
                                            BorderRadiusGeometry.circular(
                                              32,
                                            ),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(
                                              48,
                                            ),
                                        child: Column(
                                          spacing:
                                              30,
                                          children: [
                                            Row(
                                              spacing:
                                                  30,
                                              children: [
                                                Flexible(
                                                  child: contactCard[0],
                                                ),
                                                Flexible(
                                                  child: contactCard[1],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              spacing:
                                                  30,
                                              children: [
                                                Flexible(
                                                  child: contactCard[2],
                                                ),
                                                Flexible(
                                                  child: contactCard[3],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Padding(
                                    padding:
                                        const EdgeInsets.all(
                                          16.0,
                                        ),
                                    child: Material(
                                      elevation:
                                          8,
                                      color: Color(
                                        0xffE1D5C9,
                                      ),
                                      shadowColor:
                                          Color(
                                            0xff121212,
                                          ),

                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width:
                                              1,
                                          color: Color(
                                            0xFF8D735C,
                                          ),
                                        ),
                                        borderRadius:
                                            BorderRadiusGeometry.circular(
                                              32,
                                            ),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(
                                              28.0,
                                            ),
                                        child: Column(
                                          spacing:
                                              30,
                                          children:
                                              contactCard,
                                        ),
                                      ),
                                    ),
                                  ),

                            SizedBox(height: 100),
                            Container(
                              height: 1.5,
                              width:
                                  double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(
                                      0xFFB98B6E,
                                    ),
                                    Color(
                                      0xFFCE9F73,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(
                                    horizontal:
                                        40,
                                    vertical: 85,
                                  ),
                              child: Column(
                                children: footer,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: BoxBorder.all(
                  width: 1,
                  color: Color(0xFF8D735C),
                ),
              ),
              height: 90,
              child: Stack(
                alignment:
                    AlignmentGeometry.centerLeft,
                children: [
                  // Glass background
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 4,
                        sigmaY: 4,
                      ),
                      child: Container(
                        height: 90,
                        color: Color.fromRGBO(
                          255,
                          255,
                          255,
                          0.3,
                        ), // semi-transparent
                      ),
                    ),
                  ),
                  // Content
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                    child: Builder(
                      builder: (context) {
                        return Row(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment
                                  .center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(
                                      0xFFB98B6E,
                                    ),
                                    Color(
                                      0xFFCE9F73,
                                    ),
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.circular(
                                      100,
                                    ),
                              ),
                              child: Text(
                                "S",
                                style: TextStyle(
                                  color: Color(
                                    0xffDDD4CB,
                                  ),
                                  fontSize: 20,
                                  fontWeight:
                                      FontWeight
                                          .bold,
                                ),
                              ),
                            ),
                            width > 700
                                ? Wrap(
                                    alignment:
                                        WrapAlignment
                                            .center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment
                                            .center,
                                    direction: Axis
                                        .horizontal,
                                    spacing:
                                        width *
                                        0.004,
                                    runSpacing:
                                        width *
                                        0.004,
                                    children: [
                                      MyTextButton(
                                        text:
                                            "Home",
                                        widgetkey:
                                            _myHomePage,
                                      ),
                                      MyTextButton(
                                        text:
                                            "About",
                                        widgetkey:
                                            _myAboutKey,
                                      ),
                                      MyTextButton(
                                        text:
                                            "Skills",
                                        widgetkey:
                                            _mySkillKey,
                                      ),

                                      MyTextButton(
                                        text:
                                            "Projects",
                                        widgetkey:
                                            _myProjectKey,
                                      ),

                                      MyTextButton(
                                        widgetkey:
                                            _myContactPage,
                                        text:
                                            "Contact",
                                      ),
                                    ],
                                  )
                                : IconButton(
                                    onPressed: () {
                                      Scaffold.of(
                                        context,
                                      ).openEndDrawer();
                                    },
                                    icon: Icon(
                                      Icons.menu,
                                      size: 40,
                                    ),
                                  ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
