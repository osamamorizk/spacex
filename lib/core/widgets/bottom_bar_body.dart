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
          unselectedIconTheme: const IconThemeData(size: 25),
          // elevation: 100,
          iconSize: 29,
          selectedFontSize: 16,
          unselectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          backgroundColor: kPrimaryColor,
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
