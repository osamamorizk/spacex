import 'package:go_router/go_router.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/core/routing/routes.dart';
import 'package:spacex/core/widgets/bottom_bar.dart';
import 'package:spacex/feature/onbarding/presentation/views/onboarding_view.dart';
import 'package:spacex/feature/vehichels/data/models/dragon_model.dart';
import 'package:spacex/feature/vehichels/data/models/rocket_model.dart';
import 'package:spacex/feature/vehichels/presentation/views/dragon_details_view.dart';
import 'package:spacex/feature/vehichels/presentation/views/rocket_details_view.dart';

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
      GoRoute(
        path: Routes.kRocketDetails,
        builder: (context, state) {
          return RocketDetailsView(
            rocketModel: state.extra as RocketModel,
          );
        },
      ),
      GoRoute(
        path: Routes.kDragonDetils,
        builder: (context, state) {
          return DragonDetailsView(
            dragonModel: state.extra as DragonModel,
          );
        },
      ),
    ],
  );
}
