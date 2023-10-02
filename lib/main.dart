import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_0/constant/constants.dart';
import 'package:my_portfolio_0/views/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                bodySmall: const TextStyle(color: bodyTextColor),
                bodyMedium: const TextStyle(color: bodyTextColor),
              )),
      home: const HomeScreen(),
    );
  }
}
