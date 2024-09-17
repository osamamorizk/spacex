import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:spacex/feature/vehichels/data/models/ship_model.dart';
import 'package:spacex/feature/vehichels/data/repos/vehichel_repo.dart';

part 'ship_state.dart';

class ShipCubit extends Cubit<ShipState> {
  ShipCubit(this.vehichelRepo) : super(ShipInitial());

  final VehichelRepo vehichelRepo;

  Future<void> featchShips() async {
    emit(ShipLoading());
    var result = await vehichelRepo.featchShips();
    result.fold(
      (failure) {
        emit(ShipFailure(errorMessage: failure.errorMessage));
      },
      (ship) {
        emit(
          ShipSuccess(shipsList: ship),
        );
      },
    );
  }
}
