
import 'package:flutter/material.dart';
import 'package:my_portfolio_0/constant/constants.dart';
import 'package:my_portfolio_0/models/recommendations.dart';

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({
    super.key, required this.recommendation,
  });

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
           recommendation.source!,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
