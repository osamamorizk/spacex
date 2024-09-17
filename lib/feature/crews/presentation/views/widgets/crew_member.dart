import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:spacex/core/helpers/consts.dart';
import 'package:spacex/feature/company/presentation/views/widgets/custom_button.dart';
import 'package:spacex/feature/company/presentation/views/widgets/info.dart';

class CrewMember extends StatelessWidget {
  const CrewMember({
    super.key,
  });

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
            child: Image(
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                image: const NetworkImage('https://imgur.com/0smMgMH.png')),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Info(
                  title: 'Name',
                  infoTitle: "Robert Behnken",
                  fontsize: 15,
                ),
                Info(
                  title: 'Agency',
                  infoTitle: "NASA",
                  fontsize: 15,
                ),
                Info(
                  title: 'Status',
                  infoTitle: "Active",
                  fontsize: 15,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 160,
            height: 40,
            child: CustomButton(
                title: 'Wikipedia',
                ulr: 'https://en.wikipedia.org/wiki/Robert_L._Behnken',
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
//
