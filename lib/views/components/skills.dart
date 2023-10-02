import 'package:flutter/material.dart';
import 'package:my_portfolio_0/constant/constants.dart';
import 'package:my_portfolio_0/widgets/animated_progress.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Skills",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Row(
          children: [
            Expanded(
                child: AnimatedCircularProgressIndicator(
              percentage: 0.8,
              label: 'Flutter',
            )),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedCircularProgressIndicator(
              percentage: 0.62,
              label: 'UI design',
            )),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedCircularProgressIndicator(
              percentage: 0.65,
              label: 'Firebase',
            )),
          ],
        ),
      ],
    );
  }
}
