import 'package:flutter/material.dart';
import 'package:my_portfolio_0/constant/constants.dart';
import 'package:my_portfolio_0/models/project.dart';
import 'package:my_portfolio_0/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Read More>>",
              style: TextStyle(color: primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
