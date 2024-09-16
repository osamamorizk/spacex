import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:spacex/core/errors/failure.dart';
import 'package:spacex/core/helpers/api_service.dart';
import 'package:spacex/feature/launches/data/models/launches_model.dart';
import 'package:spacex/feature/launches/data/repos/launches_repos.dart';

class LaunchesReposImpl implements LaunchesRepos {
  final ApiService apiService;

  LaunchesReposImpl(this.apiService);
  @override
  Future<Either<Failure, List<LaunchesModel>>> featchUpcoming() async {
    try {
      var data = await apiService.get(endPoints: 'launches/upcoming');
      List<LaunchesModel> launchesList = [];
      for (var launch in data) {
        launchesList.add(LaunchesModel.fromJson(launch));
      }

      return right(launchesList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(
          ServerFailure(errorMessage: e.toString()),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<LaunchesModel>>> featchPast() async {
    try {
      var data = await apiService.get(endPoints: 'launches/past');
      List<LaunchesModel> launchesList = [];
      for (var launch in data as List) {
        launchesList.add(LaunchesModel.fromJson(launch));
      }

      return right(launchesList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(
          ServerFailure(errorMessage: e.toString()),
        );
      }
    }
  }
}
