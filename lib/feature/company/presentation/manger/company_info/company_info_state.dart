part of 'company_info_cubit.dart';

@immutable
sealed class CompanyInfoState {}

final class CompanyInfoInitial extends CompanyInfoState {}

final class CompanyInfoLoading extends CompanyInfoState {}

final class CompanyInfoFailure extends CompanyInfoState {
  final String errorMessage;

  CompanyInfoFailure({required this.errorMessage});
}

final class CompanyInfoSuccess extends CompanyInfoState {
  final CompanyModel companyModel;

  CompanyInfoSuccess({required this.companyModel});
}
