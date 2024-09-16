import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/helpers/api_service.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/feature/launches/Lunches_consts.dart';
import 'package:spacex/feature/launches/data/repos/launches_repos_implementation.dart';
import 'package:spacex/feature/launches/presentation/manger/past_launch_cubit/past_launch_cubit.dart';
import 'package:spacex/feature/launches/presentation/manger/upcoming_cubit/upcoming_launch_cubit.dart';

class LaunchesView extends StatelessWidget {
  const LaunchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UpcomingLaunchCubit(
            LaunchesReposImpl(
              ApiService(
                Dio(),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => PastLaunchCubit(
            LaunchesReposImpl(
              ApiService(
                Dio(),
              ),
            ),
          ),
        ),
      ],
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: const TabBar(
              dividerColor: Colors.transparent,
              labelColor: Colors.yellow,
              tabs: tapsTitles,
              indicatorColor: Colors.yellow,
            ),
          ),
          body: const TabBarView(children: tabsViews),
        ),
      ),
    );
  }
}
