import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/feature/vehichels/presentation/manger/rocket/rocket_cubit.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/rocket_item.dart';

class RocketViewBody extends StatelessWidget {
  const RocketViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RocketCubit, RocketState>(
      builder: (context, state) {
        if (state is RocketSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: ListView.builder(
              itemCount: state.rocketsList.length,
              itemBuilder: (context, index) {
                return RocketItem(
                  rocketModel: state.rocketsList[index],
                );
              },
            ),
          );
        } else if (state is RocketFailure) {
          return Center(child: Text(state.errorMessage));
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
