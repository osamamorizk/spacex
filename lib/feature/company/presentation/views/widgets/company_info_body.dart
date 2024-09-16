import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:spacex/feature/company/presentation/manger/company_info/company_info_cubit.dart';
import 'package:spacex/feature/company/presentation/views/widgets/custom_button.dart';
import 'package:spacex/feature/company/presentation/views/widgets/info.dart';
import 'package:spacex/feature/launches/presentation/manger/upcoming_cubit/upcoming_launch_cubit.dart';

class CompanyInfoBody extends StatelessWidget {
  const CompanyInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyInfoCubit, CompanyInfoState>(
      builder: (context, state) {
        if (state is CompanyInfoSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                SizedBox(
                  height: 150,
                  child: SvgPicture.asset(
                    fit: BoxFit.fill,
                    'assets/images/logo.svg',
                  ),
                ),
                Text(
                  state.companyModel.summary,
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Info(
                  title: 'Employees',
                  infoTitle: '${state.companyModel.employes}',
                ),
                Info(
                  title: 'Founded Date',
                  infoTitle: '${state.companyModel.foundedYear}',
                ),
                Info(
                  title: 'CEO',
                  infoTitle: state.companyModel.founder,
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  title: 'Website',
                  ulr: state.companyModel.website,
                  iconData: Icons.web,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  title: 'SpaceX',
                  ulr: state.companyModel.twitter,
                  iconData: FontAwesomeIcons.xTwitter,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        } else if (state is CompanyInfoFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.yellow,
            ),
          );
        }
      },
    );
  }
}
