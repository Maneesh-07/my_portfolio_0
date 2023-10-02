import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_0/constant/constants.dart';
import 'package:my_portfolio_0/views/components/area_info.dart';
import 'package:my_portfolio_0/views/components/coding.dart';
import 'package:my_portfolio_0/views/components/my_info.dart';
import 'package:my_portfolio_0/views/components/skills.dart';

class SideOne extends StatelessWidget {
  const SideOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfo(
                      title: "Residence",
                      text: "Kerala",
                    ),
                    const AreaInfo(
                      title: "City",
                      text: "Palakkad",
                    ),
                    const AreaInfo(
                      title: "Age",
                      text: "23",
                    ),
                    const Skills(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Coding(),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.bodySmall!.color,
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
