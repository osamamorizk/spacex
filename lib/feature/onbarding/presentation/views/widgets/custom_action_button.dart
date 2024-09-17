import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/core/helpers/cashe_helper.dart';
import 'package:spacex/core/routing/routes.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.isLast,
    required this.pageController,
  });

  final bool isLast;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 65,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: Colors.yellow,
        onPressed: () async {
          if (isLast) {
            await CasheHelper.savedDate(key: 'onboarding', value: true);
            GoRouter.of(context).go(Routes.kBottomBar);
          } else {
            pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastLinearToSlowEaseIn);
          }
        },
        child: isLast
            ? const Icon(
                FontAwesomeIcons.check,
                color: Colors.black,
                size: 30,
              )
            : const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 30,
              ),
      ),
    );
  }
}
