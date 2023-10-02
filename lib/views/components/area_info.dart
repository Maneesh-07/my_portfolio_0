
import 'package:flutter/material.dart';
import 'package:my_portfolio_0/constant/constants.dart';

class AreaInfo extends StatelessWidget {
  const AreaInfo({
    super.key,
    this.title,
    this.text,
  });
  final String? title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Text(text!),
        ],
      ),
    );
  }
}
