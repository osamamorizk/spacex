import 'package:flutter/material.dart';
import 'package:spacex/feature/company/presentation/views/company_info.dart';
import 'package:spacex/feature/crews/presentation/views/crew.dart';
import 'package:spacex/feature/launches/presentation/views/launches_view.dart';
import 'package:spacex/feature/vehichels/presentation/views/vichels.dart';

const kPrimaryColor = Color(0xffA9A9A9);

bool onboard = false;

List<BottomNavigationBarItem> navBarItems = [
  BottomNavigationBarItem(
    icon: const Icon(Icons.rocket_launch_outlined),
    label: 'Lunches',
    backgroundColor: kPrimaryColor.withOpacity(.5),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.directions_boat_filled_sharp),
    label: 'Assets',
    backgroundColor: kPrimaryColor.withOpacity(.5),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.people),
    label: 'Crews',
    backgroundColor: kPrimaryColor.withOpacity(.5),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.apartment),
    label: 'Company Info',
    backgroundColor: kPrimaryColor.withOpacity(.5),
  ),
];

List<Widget> screens = const [
  LaunchesView(),
  Vehichels(),
  Crew(),
  CompanyInfo(),
];
