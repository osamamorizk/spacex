import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:spacex/core/errors/failure.dart';
import 'package:spacex/core/helpers/api_service.dart';
import 'package:spacex/feature/vehichels/data/models/rocket_model.dart';
import 'package:spacex/feature/vehichels/data/repos/vehichel_repo.dart';

class VehichelRepoImplem implements VehichelRepo {
  final ApiService apiService;

  VehichelRepoImplem(this.apiService);
  @override
  Future<Either<Failure, List<RocketModel>>> featchRockets() async {
    try {
      var result = await apiService.get(endPoints: 'rockets');

      List<RocketModel> rocketsList = [];
      for (var rocket in result) {
        rocketsList.add(RocketModel.fromJson(rocket));
      }
      return right(rocketsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
