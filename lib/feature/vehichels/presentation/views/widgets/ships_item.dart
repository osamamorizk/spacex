import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/feature/vehichels/presentation/views/widgets/details_button.dart';

class ShipsItem extends StatelessWidget {
  const ShipsItem({super.key});

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
                  imageUrl: 'https://imgur.com/DaCfMsj.jpg'),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                style: TextStyle(fontSize: 20),
                'The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth.',
              ),
            ),
            const DetailsButton()
          ],
        ),
      ),
    );
  }
}
