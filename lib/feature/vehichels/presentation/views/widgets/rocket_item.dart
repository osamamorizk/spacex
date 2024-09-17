import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/core/routing/routes.dart';
import 'package:spacex/feature/vehichels/data/models/rocket_model.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/details_button.dart';

class RocketItem extends StatelessWidget {
  const RocketItem({super.key, required this.rocketModel});
  final RocketModel rocketModel;
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
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  imageUrl: rocketModel.image),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                style: const TextStyle(fontSize: 20),
                rocketModel.description,
              ),
            ),
            DetailsButton(
              onPressed: () {
                GoRouter.of(context)
                    .push(Routes.kRocketDetails, extra: rocketModel);
              },
            )
          ],
        ),
      ),
    );
  }
}
