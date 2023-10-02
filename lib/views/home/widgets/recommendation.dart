import 'package:flutter/material.dart';
import 'package:my_portfolio_0/constant/constants.dart';
import 'package:my_portfolio_0/models/recommendations.dart';
import 'package:my_portfolio_0/views/home/widgets/recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                (index) => RecommendationsCard(
                  recommendation: demo_recommendations[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
