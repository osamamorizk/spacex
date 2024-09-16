import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.title,
    required this.infoTitle,
  });
  final String title;
  final String infoTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      trailing: Text(
        infoTitle,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
