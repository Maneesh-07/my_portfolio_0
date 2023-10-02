import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        color: const Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/me.jpg'),
            ),
            const Spacer(),
            Text(
              'Maneesh M',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
