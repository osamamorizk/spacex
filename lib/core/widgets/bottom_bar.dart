import 'package:flutter/material.dart';
import 'package:spacex/core/widgets/bottom_bar_body.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BottomBarBody(),
    );
  }
}
