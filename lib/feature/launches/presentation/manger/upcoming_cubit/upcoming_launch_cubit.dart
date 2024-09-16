import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:spacex/feature/launches/data/models/launches_model.dart';
import 'package:spacex/feature/launches/data/repos/launches_repos.dart';
part 'upcoming_launch_state.dart';

class UpcomingLaunchCubit extends Cubit<UpcomingLaunchState> {
  UpcomingLaunchCubit(this.launchesRepos) : super(UpcomingLaunchInitial());

  final LaunchesRepos launchesRepos;

  Future<void> featchUpcomingLaunches() async {
    emit(UpcomingLaunchLaoding());
    var result = await launchesRepos.featchUpcoming();
    result.fold(
      (failure) {
        emit(
          UpcomingLaunchFailure(errorMessage: failure.errorMessage),
        );
      },
      (launches) {
        emit(UpcomingLaunchSuccess(launches: launches));
      },
    );
  }
}
