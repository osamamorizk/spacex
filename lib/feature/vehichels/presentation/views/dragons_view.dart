import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/helpers/api_service.dart';
import 'package:spacex/core/helpers/service_locator.dart';
import 'package:spacex/feature/vehichels/data/repos/vehichel_repo_implem.dart';
import 'package:spacex/feature/vehichels/presentation/manger/dragon/dragon_cubit.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/dragon_view_body.dart';

class DragonsView extends StatelessWidget {
  const DragonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DragonCubit(VehichelRepoImplem(getIt.get<ApiService>()))
            ..featchDragons(),
      child: DragonViewBody(),
    );
  }
}
