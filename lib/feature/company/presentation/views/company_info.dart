import 'package:flutter/material.dart';
import 'package:spacex/feature/company/presentation/views/widgets/company_info_body.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CompanyInfoBody(),
    );
  }
}
