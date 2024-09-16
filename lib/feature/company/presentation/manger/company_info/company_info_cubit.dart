import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:spacex/feature/company/data/models/company_model.dart';
import 'package:spacex/feature/company/data/repos/company_repo.dart';

part 'company_info_state.dart';

class CompanyInfoCubit extends Cubit<CompanyInfoState> {
  CompanyInfoCubit(this.companyRepo) : super(CompanyInfoInitial());

  final CompanyRepo companyRepo;

  Future<void> featchCompanyInfo() async {
    emit(CompanyInfoLoading());
    var result = await companyRepo.featchCompanyInfo();

    result.fold((failure) {
      emit(CompanyInfoFailure(errorMessage: failure.errorMessage));
    }, (companyModel) {
      emit(CompanyInfoSuccess(companyModel: companyModel));
    });
  }
}
