import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/core/widgets/custom_button.dart';
import 'package:spacex/core/widgets/info.dart';
import 'package:spacex/feature/crews/data/models/crew_model.dart';

class CrewMember extends StatelessWidget {
  const CrewMember({
    super.key,
    required this.crewModel,
  });

  final CrewModel crewModel;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                imageUrl: crewModel.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Info(
                  title: 'Name',
                  infoTitle: crewModel.name,
                  fontsize: 15,
                ),
                Info(
                  title: 'Agency',
                  infoTitle: crewModel.agency,
                  fontsize: 15,
                ),
                Info(
                  title: 'Status',
                  infoTitle: crewModel.status,
                  fontsize: 15,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 160,
            height: 40,
            child: CustomButton(
                title: 'Wikipedia',
                ulr: crewModel.wikipedia,
                iconData: FontAwesomeIcons.wikipediaW),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
