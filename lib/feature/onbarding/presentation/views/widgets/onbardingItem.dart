import 'package:flutter/material.dart';
import 'package:spacex/feature/onbarding/data/models/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.onboardingModel,
  });

  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'SpaceX Info',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        Image(
          height: 300,
          image: AssetImage(onboardingModel.image),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          textAlign: TextAlign.center,
          onboardingModel.text,
          style: const TextStyle(fontSize: 24),
        )
      ],
    );
  }
}
