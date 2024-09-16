import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/feature/launches/data/models/launches_model.dart';

class UpcomingItem extends StatelessWidget {
  const UpcomingItem({super.key, required this.launchesModel});
  final LaunchesModel launchesModel;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      tilePadding: const EdgeInsets.symmetric(vertical: 8),
      childrenPadding: const EdgeInsets.all(8),
      backgroundColor: kPrimaryColor,
      leading: Image(
        image: AssetImage(launchesModel.image),
      ),
      title: Text(
        launchesModel.name,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
      subtitle: Text(launchesModel.date),
      trailing: const Text(
        'Falcon',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      children: tileChildren,
    );
  }

  List<Widget> get tileChildren {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rocket: ${launchesModel.rocket}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Payload: ${launchesModel.payloads}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.yellow),
              ),
              onPressed: () {},
              child: const Text(
                'Webcast',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    ];
  }
}
