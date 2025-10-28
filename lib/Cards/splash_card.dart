import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio_site/Cards/splash_card2.dart';

class BeautifulSplashScreen
    extends StatefulWidget {
  const BeautifulSplashScreen({super.key});

  @override
  State<BeautifulSplashScreen> createState() =>
      _BeautifulSplashScreenState();
}

class _BeautifulSplashScreenState
    extends State<BeautifulSplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _textController;
  late AnimationController _cardController;
  late Animation<double> _textFade;
  late Animation<double> _cardFade;
  late Animation<Offset> _textSlide;

  @override
  void initState() {
    super.initState();

    _cardController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1500,
      ),
    );

    _textController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
    );

    _cardFade = Tween<double>(begin: 0, end: 1)
        .animate(
          CurvedAnimation(
            parent: _cardController,
            curve: Curves.easeInOut,
          ),
        );

    _textFade = Tween<double>(begin: 0, end: 1)
        .animate(
          CurvedAnimation(
            parent: _textController,
            curve: Curves.easeIn,
          ),
        );

    _textSlide =
        Tween<Offset>(
          begin: const Offset(0, 0.3),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: _textController,
            curve: Curves.easeOut,
          ),
        );

    // Play animations in sequence
    _cardController.forward().then((_) {
      _textController.forward();
    });

    // After 6 seconds → navigate to next
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(
            milliseconds: 800,
          ),
          pageBuilder: (_, __, ___) =>
              const MySplashScreen2(),
          transitionsBuilder:
              (_, animation, __, child) {
                return FadeTransition(
                  opacity: animation,
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  ),
                );
              },
        ),
      );
    });
  }

  @override
  void dispose() {
    _cardController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(
      context,
    ).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF3E1D0),
              Color(0xFFE6D3C3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _cardFade,
            child: Container(
              width: width < 500
                  ? width * 0.8
                  : 400,
              height: width < 500 ? 200 : 250,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(
                  0.4,
                ),
                borderRadius:
                    BorderRadius.circular(24),
                border: Border.all(
                  color: Colors.white.withOpacity(
                    0.2,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown
                        .withOpacity(0.15),
                    blurRadius: 30,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      SlideTransition(
                        position: _textSlide,
                        child: FadeTransition(
                          opacity: _textFade,
                          child: Column(
                            children: [
                              Text(
                                'नमस्ते',
                                style: TextStyle(
                                  fontSize:
                                      width < 500
                                      ? 48
                                      : 64,
                                  fontWeight:
                                      FontWeight
                                          .w700,
                                  color:
                                      const Color(
                                        0xFF3E2A1D,
                                      ),
                                  letterSpacing:
                                      2,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                width: 100,
                                height: 2,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(
                                        0xFFB98B6E,
                                      ),
                                      Color(
                                        0xFFD1A67E,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Explore my world of creation',
                                style: TextStyle(
                                  fontSize:
                                      width < 500
                                      ? 14
                                      : 16,
                                  color: Colors
                                      .brown
                                      .shade600,
                                ),
                              ),
                            ],
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
