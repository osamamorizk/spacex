import 'package:dartz/dartz.dart';
import 'package:spacex/core/errors/failure.dart';
import 'package:spacex/feature/launches/data/models/launches_model.dart';

abstract class LaunchesRepos {
  Future<Either<Failure, List<LaunchesModel>>> featchUpcoming();
  Future<Either<Failure, List<LaunchesModel>>> featchPast();
}
