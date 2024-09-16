import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:spacex/core/errors/failure.dart';
import 'package:spacex/core/helpers/api_service.dart';
import 'package:spacex/feature/company/data/models/company_model.dart';
import 'package:spacex/feature/company/data/repos/company_repo.dart';

class CompanyRepoImpl implements CompanyRepo {
  final ApiService apiService;

  CompanyRepoImpl(this.apiService);
  @override
  Future<Either<Failure, CompanyModel>> featchCompanyInfo() async {
    try {
      var data = await apiService.get(endPoints: 'company');
      CompanyModel companyModel = CompanyModel.fromJson(data);
      return right(companyModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
