import 'package:flutter/material.dart';

import 'package:spacex/feature/onbarding/onboard_consts.dart';
import 'package:spacex/feature/onbarding/presentation/views/widgets/custom_action_button.dart';
import 'package:spacex/feature/onbarding/presentation/views/widgets/custom_indicator.dart';
import 'package:spacex/feature/onbarding/presentation/views/widgets/onbardingItem.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  var pageController = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: (value) {
                  if (value == onboardList.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                controller: pageController,
                itemCount: onboardList.length,
                itemBuilder: (context, index) => OnboardingItem(
                      onboardingModel: onboardList[index],
                    )),
          ),
          CuatomIndicator(pageController: pageController),
          const SizedBox(
            height: 40,
          ),
          CustomActionButton(isLast: isLast, pageController: pageController),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
