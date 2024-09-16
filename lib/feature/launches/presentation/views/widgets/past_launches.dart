import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/feature/launches/presentation/manger/past_launch_cubit/past_launch_cubit.dart';
import 'package:spacex/feature/launches/presentation/views/widgets/past_item.dart';

class PastLaunches extends StatelessWidget {
  const PastLaunches({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PastLaunchCubit, PastLaunchState>(
      builder: (context, state) {
        if (state is PastLaunchSuccess) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: ListView.builder(
                itemCount: state.launches.length,
                itemBuilder: (context, index) {
                  return PastItem(
                    launchesModel: state.launches[index],
                  );
                },
              ),
            ),
          );
        } else if (state is PastLaunchFailure) {
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
