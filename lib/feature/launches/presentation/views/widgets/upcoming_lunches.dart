import 'package:flutter/material.dart';
import 'package:spacex/feature/launches/presentation/views/widgets/upcoming_item.dart';

class UpcomingLaunches extends StatelessWidget {
  const UpcomingLaunches({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
        child:  FutureBuilder(
      future: ,
      

      builder: (context, snapshot) {
         return  UpcomingItem(launchesModel: snapshot,);
      }, 
    );
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
      future: ,
      

      builder: (context, snapshot) {
         return  UpcomingItem(launchesModel: ,);
      }, 
    );
  }
}