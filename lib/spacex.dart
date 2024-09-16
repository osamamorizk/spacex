import 'package:flutter/material.dart';
import 'package:spacex/core/routing/app_router.dart';

class Spacex extends StatelessWidget {
  const Spacex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
          // scaffoldBackgroundColor: const Color(0xff161616),
          ),
    );
  }
}
