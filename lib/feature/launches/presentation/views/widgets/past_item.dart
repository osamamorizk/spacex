import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/feature/launches/data/models/launches_model.dart';

class PastItem extends StatelessWidget {
  const PastItem({super.key, required this.launchesModel});
  final LaunchesModel launchesModel;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      tilePadding: const EdgeInsets.symmetric(vertical: 8),
      childrenPadding: const EdgeInsets.all(8),
      backgroundColor: kPrimaryColor,
      leading: Image(
        image: NetworkImage(launchesModel.image ??
            'https://images2.imgbox.com/a9/9a/NXVkTZCE_o.png'),
      ),
      title: Text(
        launchesModel.name,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
      subtitle:
          Text(DateFormat('dd-M-yyyy').format(launchesModel.date as DateTime)),
      children: tileChildren,
    );
  }

  List<Widget> get tileChildren {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            maxLines: 2,
            'Name: ${launchesModel.name}',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Rocket: ${launchesModel.rocket}',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Flight Number: ${launchesModel.flightNum ?? 100}',
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
