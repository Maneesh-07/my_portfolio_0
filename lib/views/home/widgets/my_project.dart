import 'package:flutter/material.dart';
import 'package:my_portfolio_0/constant/constants.dart';
import 'package:my_portfolio_0/models/project.dart';
import 'package:my_portfolio_0/responsive.dart';
import 'package:my_portfolio_0/views/home/widgets/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Project",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
          mobile: ProjectsGridView( crossAxisCount: 1,
          childAspectRatio: 1.7
          ),
          mobileLarge: ProjectsGridView(
            crossAxisCount: 2,
          ),
          tablet: ProjectsGridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemCount: demo_projects.length,
      itemBuilder: (BuildContext context, int index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
