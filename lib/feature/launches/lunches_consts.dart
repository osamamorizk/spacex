import 'package:flutter/material.dart';
import 'package:spacex/feature/launches/presentation/views/widgets/past_launches.dart';
import 'package:spacex/feature/launches/presentation/views/widgets/upcoming_lunches.dart';

const List<Widget> tabsViews = [
  UpcomingLaunches(),
  PastLaunches(),
];

const tapsTitles = [
  Tab(
    child: SizedBox(
      width: 105,
      child: Row(
        children: [
          Icon(Icons.update),
          Spacer(),
          Text('Upcoming'),
        ],
      ),
    ),
  ),
  Tab(
    child: SizedBox(
      width: 70,
      child: Row(
        children: [
          Icon(Icons.update),
          Spacer(),
          Text('Past'),
        ],
      ),
    ),
  )
];
