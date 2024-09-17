import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:spacex/feature/crews/data/models/crew_model.dart';
import 'package:spacex/feature/crews/data/repos/crew_repo.dart';

part 'crew_state.dart';

class CrewCubit extends Cubit<CrewState> {
  CrewCubit(this.crewRepo) : super(CrewInitial());

  final CrewRepo crewRepo;

  Future<void> featchCrewInfo() async {
    emit(CrewLoading());

    var result = await crewRepo.featchCrewInfo();
    result.fold(
      (failure) {
        emit(CrewFailure(errorMessage: failure.errorMessage));
      },
      (crew) {
        emit(CrewSuceess(crewsList: crew));
      },
    );
  }
}
