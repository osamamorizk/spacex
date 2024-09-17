import 'package:flutter/material.dart';
import 'package:spacex/core/functions/url_luncher.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.ulr,
    required this.iconData,
  });

  final String title;
  final String ulr;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customUrlLauncher(url: ulr);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(
            32,
          ),
        ),
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              size: 30,
              iconData,
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
