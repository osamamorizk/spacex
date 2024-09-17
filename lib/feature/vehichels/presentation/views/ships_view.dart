import 'package:flutter/material.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/ships_item.dart';

class ShipsView extends StatelessWidget {
  const ShipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ShipsItem();
        },
      ),
    );
  }
}
