import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/feature/launches/presentation/manger/upcoming_cubit/upcoming_launch_cubit.dart';
import 'package:spacex/feature/launches/presentation/views/widgets/upcoming_item.dart';

class UpcomingLaunches extends StatelessWidget {
  const UpcomingLaunches({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingLaunchCubit, UpcomingLaunchState>(
      builder: (context, state) {
        if (state is UpcomingLaunchSuccess) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: ListView.builder(
                itemCount: state.launches.length,
                itemBuilder: (context, index) {
                  return UpcomingItem(
                    launchesModel: state.launches[index],
                  );
                },
              ),
            ),
          );
        } else if (state is UpcomingLaunchFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.yellow,
          ));
        }
      },
    );
  }
}
