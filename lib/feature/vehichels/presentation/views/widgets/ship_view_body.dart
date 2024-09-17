import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/feature/vehichels/presentation/manger/ship/ship_cubit.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/ships_item.dart';

class ShipViewBody extends StatelessWidget {
  const ShipViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShipCubit, ShipState>(
      builder: (context, state) {
        if (state is ShipSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: ListView.builder(
              itemCount: state.shipsList.length,
              itemBuilder: (context, index) {
                return ShipsItem(
                  shipModel: state.shipsList[index],
                );
              },
            ),
          );
        } else if (state is ShipFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
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
