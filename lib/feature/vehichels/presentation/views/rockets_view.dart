import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/helpers/api_service.dart';
import 'package:spacex/core/helpers/service_locator.dart';
import 'package:spacex/feature/vehichels/data/repos/vehichel_repo_implem.dart';
import 'package:spacex/feature/vehichels/presentation/manger/rocket/rocket_cubit.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/rocket_view_body.dart';

class RocketsView extends StatelessWidget {
  const RocketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RocketCubit(
        VehichelRepoImplem(getIt.get<ApiService>()),
      )..fetchRocketInfo(),
      child: RocketViewBody(),
    );
  }
}
