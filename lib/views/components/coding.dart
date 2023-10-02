import 'package:flutter/material.dart';
import 'package:my_portfolio_0/constant/constants.dart';
import 'package:my_portfolio_0/widgets/animated_progress.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: 'Dart',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: 'Firebase',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: 'HTML',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: 'Css',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.55,
          label: 'Woocommerce',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: 'Provider',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: 'UI Design',
        ),
      ],
    );
  }
}
