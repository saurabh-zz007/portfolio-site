import 'package:flutter/material.dart';
import 'package:portfolio_site/Cards/splash_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'Futura',

        focusColor: Color(0xff121212),
        hoverColor: Color(0xff121212),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF3D2D1B),
          surface: Color(0xFFDDD4CB),
        ),
        useMaterial3: true,
      ),

      home: BeautifulSplashScreen(),
    );
  }
}
