import 'package:flutter/material.dart';
import 'package:spacex/feature/company/presentation/views/company_info.dart';
import 'package:spacex/feature/crews/presentation/views/crew.dart';
import 'package:spacex/feature/launches/presentation/views/launches_view.dart';
import 'package:spacex/feature/vehichels/presentation/views/vichels.dart';

const kPrimaryColor = Color(0xff312819);

bool onboard = false;

List<BottomNavigationBarItem> navBarItems = const [
  BottomNavigationBarItem(
    icon: Icon(Icons.calendar_month_sharp),
    label: 'Lunches',
    backgroundColor: kPrimaryColor,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.rocket_launch_outlined),
    label: 'Assets',
    backgroundColor: kPrimaryColor,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.people),
    label: 'Crews',
    backgroundColor: kPrimaryColor,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.apartment),
    label: 'Company',
    backgroundColor: kPrimaryColor,
  ),
];

List<Widget> screens = const [
  LaunchesView(),
  Vehichels(),
  Crew(),
  CompanyInfo(),
];
