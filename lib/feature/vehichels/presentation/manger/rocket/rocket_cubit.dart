import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:spacex/feature/vehichels/data/models/rocket_model.dart';
import 'package:spacex/feature/vehichels/data/repos/vehichel_repo.dart';

part 'rocket_state.dart';

class RocketCubit extends Cubit<RocketState> {
  RocketCubit(this.vehichelRepo) : super(RocketInitial());
  final VehichelRepo vehichelRepo;

  Future<void> fetchRocketInfo() async {
    emit(RocketLoading());
    var result = await vehichelRepo.featchRockets();
    result.fold(
      (failure) {
        emit(
          RocketFailure(errorMessage: failure.errorMessage),
        );
      },
      (rocket) {
        emit(
          RocketSuccess(rocketsList: rocket),
        );
      },
    );
  }
}
