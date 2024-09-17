import 'package:flutter/material.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: onPressed,
            child: const Text(
              textAlign: TextAlign.end,
              'More Details',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
