import 'package:dartz/dartz.dart';
import 'package:spacex/core/errors/failure.dart';
import 'package:spacex/feature/crews/data/models/crew_model.dart';

abstract class CrewRepo {
  Future<Either<Failure, List<CrewModel>>> featchCrewInfo();
}
