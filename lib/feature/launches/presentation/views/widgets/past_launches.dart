import 'package:flutter/material.dart';
import 'package:spacex/feature/launches/presentation/views/widgets/past_item.dart';

class PastLaunches extends StatelessWidget {
  const PastLaunches({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const PastItem();
          },
        ),
      ),
    );
  }
}
