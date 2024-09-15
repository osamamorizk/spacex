import 'package:flutter/material.dart';
import 'package:spacex/core/helpers/consts.dart';

class BottomBarBody extends StatefulWidget {
  const BottomBarBody({super.key});

  @override
  State<BottomBarBody> createState() => _BottomBarBodyState();
}

class _BottomBarBodyState extends State<BottomBarBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: const IconThemeData(size: 28),
          elevation: 100,
          iconSize: 32,
          selectedFontSize: 16,
          unselectedFontSize: 15,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          backgroundColor: kPrimaryColor.withOpacity(.5),
          currentIndex: currentIndex,
          onTap: (newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          items: navBarItems),
      body: screens.elementAt(currentIndex),
    );
  }
}
