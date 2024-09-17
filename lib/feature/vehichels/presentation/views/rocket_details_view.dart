import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';

import 'package:spacex/core/widgets/custom_button.dart';
import 'package:spacex/core/widgets/info.dart';
import 'package:spacex/feature/vehichels/data/models/rocket_model.dart';

class RocketDetailsView extends StatelessWidget {
  const RocketDetailsView({super.key, required this.rocketModel});
  final RocketModel rocketModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(rocketModel.name),
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
                  image: NetworkImage(rocketModel.image)),
            ),
            const SizedBox(height: 20),
            Text(
              rocketModel.description,
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Info(
              title: 'Name',
              infoTitle: rocketModel.name,
            ),
            Info(
              title: 'Type',
              infoTitle: rocketModel.type,
            ),
            Info(
              title: 'First Flight',
              infoTitle: rocketModel.fristFlight,
            ),
            Info(
              title: 'Cost per launch',
              infoTitle: '${rocketModel.cost}',
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              title: 'Wikipedia',
              ulr: rocketModel.wikipedia,
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
