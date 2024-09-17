import 'package:dartz/dartz.dart';
import 'package:spacex/core/errors/failure.dart';
import 'package:spacex/feature/vehichels/data/models/dragon_model.dart';
import 'package:spacex/feature/vehichels/data/models/rocket_model.dart';
import 'package:spacex/feature/vehichels/data/models/ship_model.dart';

abstract class VehichelRepo {
  Future<Either<Failure, List<RocketModel>>> featchRockets();
  Future<Either<Failure, List<DragonModel>>> featchDragons();
  Future<Either<Failure, List<ShipModel>>> featchShips();
}
