import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/feature/crews/presentation/views/crew_body.dart';

class Crew extends StatelessWidget {
  const Crew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Crew',
          style: TextStyle(fontSize: 30, color: Colors.yellow),
        ),
      ),
      body: const CrewBody(),
    );
  }
}
