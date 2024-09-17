import 'package:flutter/material.dart';

import 'package:spacex/core/widgets/custom_button.dart';
import 'package:spacex/core/widgets/info.dart';
import 'package:spacex/feature/vehichels/data/models/ship_model.dart';

class ShipsDetails extends StatelessWidget {
  const ShipsDetails({super.key, required this.shipModel});
  final ShipModel shipModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Info(
              title: 'Name',
              infoTitle: shipModel.name,
            ),
            Info(
              title: 'Type',
              infoTitle: shipModel.type,
            ),
            Info(
              title: 'Home port',
              infoTitle: shipModel.homePort,
            ),
            Info(
              title: 'Role',
              infoTitle: shipModel.role,
            ),
            Info(
              title: 'Build year',
              infoTitle: '${shipModel.yearBuilt ?? 'UnKnown'}',
            ),
            SizedBox(
              width: 180,
              height: 35,
              child: CustomButton(
                title: 'More INfo',
                ulr: shipModel.link ?? '',
                iconData: Icons.web,
              ),
            ),
          ],
        ));
  }
}
