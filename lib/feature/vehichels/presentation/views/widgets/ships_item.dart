import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/feature/vehichels/data/models/ship_model.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/ships_details.dart';

class ShipsItem extends StatelessWidget {
  const ShipsItem({super.key, required this.shipModel});
  final ShipModel shipModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: kPrimaryColor),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: CachedNetworkImage(
                  errorWidget: (context, url, error) =>
                      const Icon(size: 50, Icons.error),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  imageUrl: shipModel.image ??
                      'https://images.marinetraffic.com/collection/4230203.webp'),
            ),
            ShipsDetails(shipModel: shipModel),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
