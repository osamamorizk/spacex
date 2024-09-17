import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';

import 'package:spacex/core/widgets/custom_button.dart';
import 'package:spacex/core/widgets/info.dart';
import 'package:spacex/feature/vehichels/data/models/dragon_model.dart';

class DragonDetailsView extends StatelessWidget {
  const DragonDetailsView({super.key, required this.dragonModel});
  final DragonModel dragonModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(dragonModel.name),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image(
                  height: 200,
                  fit: BoxFit.fill,
                  image: NetworkImage(dragonModel.image)),
            ),
            const SizedBox(height: 20),
            Text(
              dragonModel.description,
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Info(
              title: 'Name',
              infoTitle: dragonModel.name,
            ),
            Info(
              title: 'Type',
              infoTitle: dragonModel.type,
            ),
            Info(
              title: 'First Flight',
              infoTitle: dragonModel.fristFlight,
            ),
            Info(
              title: 'Orbit duration per year',
              infoTitle: '${dragonModel.orbitDuration}',
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              title: 'Wikipedia',
              ulr: dragonModel.wikipedia,
              iconData: Icons.web,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
