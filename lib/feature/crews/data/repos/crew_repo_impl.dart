import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:spacex/core/errors/failure.dart';
import 'package:spacex/core/helpers/api_service.dart';
import 'package:spacex/feature/crews/data/models/crew_model.dart';
import 'package:spacex/feature/crews/data/repos/crew_repo.dart';

class CrewRepoImpl implements CrewRepo {
  final ApiService apiService;

  CrewRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<CrewModel>>> featchCrewInfo() async {
    try {
      var result = await apiService.get(endPoints: 'crew');

      List<CrewModel> crewList = [];
      for (var crew in result) {
        crewList.add(CrewModel.froJson(crew));
      }
      return right(crewList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
