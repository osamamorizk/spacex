import 'package:bloc/bloc.dart';
import 'package:spacex/feature/launches/data/repos/launches_repos.dart';

part 'past_launch_state.dart';

class PastLaunchCubit extends Cubit<PastLaunchState> {
  PastLaunchCubit(this.launchesRepos) : super(PastLaunchInitial());

  final LaunchesRepos launchesRepos;

  Future<void> featchUpcomingLaunches() async {
    emit(PastLaunchLaoding());
    var result = await launchesRepos.featchPast();
    result.fold(
      (failure) {
        emit(
          PastLaunchFailure(errorMessage: failure.errorMessage),
        );
      },
      (launches) {
        emit(PastLaunchSuccess(launches: launches));
      },
    );
  }
}
