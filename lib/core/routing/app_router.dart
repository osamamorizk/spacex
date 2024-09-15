import 'package:go_router/go_router.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/core/routing/routes.dart';
import 'package:spacex/core/widgets/bottom_bar.dart';
import 'package:spacex/feature/onbarding/presentation/views/onboarding_view.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: onboard ? Routes.kBottomBar : Routes.kOnboarding,
    routes: [
      GoRoute(
        path: Routes.kOnboarding,
        builder: (context, state) {
          return const OnboardingView();
        },
      ),
      GoRoute(
        path: Routes.kBottomBar,
        builder: (context, state) {
          return const BottomBar();
        },
      ),
    ],
  );
}
