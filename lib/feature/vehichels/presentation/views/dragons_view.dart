import 'package:flutter/material.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/dragon_item.dart';

class DragonsView extends StatelessWidget {
  const DragonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return DragonItem();
        },
      ),
    );
  }
}
