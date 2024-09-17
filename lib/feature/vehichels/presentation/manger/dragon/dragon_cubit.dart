import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:spacex/feature/vehichels/data/models/dragon_model.dart';
import 'package:spacex/feature/vehichels/data/repos/vehichel_repo.dart';

part 'dragon_state.dart';

class DragonCubit extends Cubit<DragonState> {
  DragonCubit(this.vehichelRepo) : super(DragonInitial());

  final VehichelRepo vehichelRepo;

  Future<void> featchDragons() async {
    var result = await vehichelRepo.featchDragons();

    result.fold(
      (failure) {
        emit(
          DragonFailure(errorMessage: failure.errorMessage),
        );
      },
      (dragon) {
        emit(
          DragonSuccess(dragonList: dragon),
        );
      },
    );
  }
}
