import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:spacex/core/helpers/api_service.dart';
import 'package:spacex/feature/company/data/repos/company_repo_impl.dart';
import 'package:spacex/feature/launches/data/repos/launches_repos_implementation.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<LaunchesReposImpl>(
    LaunchesReposImpl(getIt.get<ApiService>()),
  );

  getIt.registerSingleton<CompanyRepoImpl>(
      CompanyRepoImpl(getIt.get<ApiService>()));
}
