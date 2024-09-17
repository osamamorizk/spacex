import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/feature/vehichels/vehichels_consts.dart';

class Vehichels extends StatelessWidget {
  const Vehichels({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: vhichelsTapsViews.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: const TabBar(
              padding: EdgeInsets.all(0),
              // isScrollable: true,
              // tabAlignment: TabAlignment.center,
              indicatorColor: Colors.yellow,
              labelColor: Colors.yellow,
              dividerHeight: 0,
              tabs: vehichelsTapsTitles,
            )),
        body: TabBarView(
          children: vhichelsTapsViews,
        ),
      ),
    );
  }
}
