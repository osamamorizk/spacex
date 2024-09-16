import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';

class PastItem extends StatelessWidget {
  const PastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      tilePadding: const EdgeInsets.symmetric(vertical: 8),
      childrenPadding: const EdgeInsets.all(8),
      backgroundColor: kPrimaryColor,
      leading: const Image(
        image: AssetImage('assets/images/test.png'),
      ),
      title: const Text(
        'Starlink Group 9-17',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      subtitle: const Text('18 Sep 24 - 17:20'),
      trailing: const Text(
        'Falcon',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      children: tileChildren,
    );
  }

  List<Widget> get tileChildren {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Rocket: Falcon Heavy',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Payload: 5fe3b86eb3467846b324217c',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.yellow),
              ),
              onPressed: () {},
              child: const Text(
                'Webcast',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    ];
  }
}
