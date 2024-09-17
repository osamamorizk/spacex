import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/helpers/api_service.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/core/helpers/service_locator.dart';
import 'package:spacex/feature/crews/data/repos/crew_repo_impl.dart';
import 'package:spacex/feature/crews/presentation/manger/crew_cubit/crew_cubit.dart';
import 'package:spacex/feature/crews/presentation/views/crew_body.dart';

class Crew extends StatelessWidget {
  const Crew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CrewCubit(CrewRepoImpl(apiService: getIt.get<ApiService>()))
            ..featchCrewInfo(),
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: kPrimaryColor,
          title: const Text(
            'Astronauts',
            style: TextStyle(fontSize: 30, color: Colors.yellow),
          ),
        ),
        body: const CrewBody(),
      ),
    );
  }
}
