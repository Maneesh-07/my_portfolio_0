import 'package:flutter/material.dart';
import 'package:my_portfolio_0/views/home/widgets/home_banner.dart';
import 'package:my_portfolio_0/views/home/widgets/my_project.dart';
import 'package:my_portfolio_0/views/home/widgets/recommendation.dart';
import 'package:my_portfolio_0/views/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
