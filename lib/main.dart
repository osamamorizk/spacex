import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/bloc_observer.dart';
import 'package:spacex/core/helpers/cashe_helper.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/core/helpers/service_locator.dart';
import 'package:spacex/spacex.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await CasheHelper.casheIintialize();
  onboard = CasheHelper.getData(key: 'onboarding') ?? false;
  runApp(const Spacex());
}
