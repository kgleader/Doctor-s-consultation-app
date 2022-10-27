import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// @dart=2.9 import 'package:flutter/material.dart';

import 'package:doctor_consultation_app/screens/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme),
      ),
      home: OnboardingScreen(),
    );
  }
}
