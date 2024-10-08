import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/feature/onbarding/presentation/views/widgets/onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:kPrimaryColor ,
      body: OnboardingBody(),
    );
  }
}
