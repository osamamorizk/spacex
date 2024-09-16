import 'package:dartz/dartz.dart';
import 'package:spacex/core/errors/failure.dart';
import 'package:spacex/feature/company/data/models/company_model.dart';

abstract class CompanyRepo {
  Future<Either<Failure, CompanyModel>> featchCompanyInfo();
}
