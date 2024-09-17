import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/feature/vehichels/presentation/manger/dragon/dragon_cubit.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/dragon_item.dart';

class DragonViewBody extends StatelessWidget {
  const DragonViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DragonCubit, DragonState>(
      builder: (context, state) {
        if (state is DragonSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: ListView.builder(
              itemCount: state.dragonList.length,
              itemBuilder: (context, index) {
                return DragonItem(
                  dragonModel: state.dragonList[index],
                );
              },
            ),
          );
        } else if (state is DragonFailure) {
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
