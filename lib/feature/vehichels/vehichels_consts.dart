import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:spacex/feature/vehichels/presentation/views/dragons_view.dart';
import 'package:spacex/feature/vehichels/presentation/views/rockets_view.dart';
import 'package:spacex/feature/vehichels/presentation/views/ships_view.dart';

List<Widget> vhichelsTapsViews = const [
  RocketsView(),
  DragonsView(),
  ShipsView(),
];

const vehichelsTapsTitles = [
  Tab(
    child: SizedBox(
      width: 105,
      child: Row(
        children: [
          Icon(Icons.rocket_launch_outlined),
          Spacer(),
          Text('Rockets'),
        ],
      ),
    ),
  ),
  Tab(
    child: SizedBox(
      child: Row(
        children: [
          Icon(Icons.satellite_alt_outlined),
          Spacer(),
          Text('Dragons'),
        ],
      ),
    ),
  ),
  Tab(
    child: SizedBox(
      width: 70,
      child: Row(
        children: [
          Icon(FontAwesomeIcons.ship),
          Spacer(),
          Text('Ships'),
        ],
      ),
    ),
  )
];
