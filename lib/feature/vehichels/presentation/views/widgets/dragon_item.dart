import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/core/routing/routes.dart';
import 'package:spacex/feature/vehichels/data/models/dragon_model.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/details_button.dart';

class DragonItem extends StatelessWidget {
  const DragonItem({super.key, required this.dragonModel});
  final DragonModel dragonModel;
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
                  imageUrl: dragonModel.image),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                style: const TextStyle(fontSize: 20),
                dragonModel.description,
              ),
            ),
            DetailsButton(
              onPressed: () {
                GoRouter.of(context)
                    .push(Routes.kDragonDetils, extra: dragonModel);
              },
            )
          ],
        ),
      ),
    );
  }
}
