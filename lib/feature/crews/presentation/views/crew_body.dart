import 'package:flutter/material.dart';

import 'package:spacex/feature/crews/presentation/views/widgets/crew_member.dart';

class CrewBody extends StatelessWidget {
  const CrewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: CrewMember(),
          );
        },
      ),
    );
  }
}
