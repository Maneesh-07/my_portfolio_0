import 'package:flutter/material.dart';
import 'package:my_portfolio_0/constant/constants.dart';
import 'package:my_portfolio_0/responsive.dart';
import 'package:my_portfolio_0/views/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )),
      drawer: const SideOne(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideOne(),
                ),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [...children],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
