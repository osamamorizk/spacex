import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/feature/crews/presentation/manger/crew_cubit/crew_cubit.dart';

import 'package:spacex/feature/crews/presentation/views/widgets/crew_member.dart';

class CrewBody extends StatelessWidget {
  const CrewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrewCubit, CrewState>(
      builder: (context, state) {
        if (state is CrewSuceess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: CrewMember(
                    crewModel: state.crewsList[index],
                  ),
                );
              },
            ),
          );
        } else if (state is CrewFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.yellow,
            ),
          );
        }
      },
    );
  }
}
