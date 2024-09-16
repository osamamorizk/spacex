import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/helpers/service_locator.dart';
import 'package:spacex/feature/company/data/repos/company_repo_impl.dart';
import 'package:spacex/feature/company/presentation/manger/company_info/company_info_cubit.dart';
import 'package:spacex/feature/company/presentation/views/widgets/company_info_body.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CompanyInfoCubit(getIt.get<CompanyRepoImpl>())..featchCompanyInfo(),
      child: const Scaffold(
        body: CompanyInfoBody(),
      ),
    );
  }
}
