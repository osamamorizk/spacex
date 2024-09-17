import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.title,
    required this.infoTitle,
    this.fontsize,
  });
  final String title;
  final String infoTitle;

  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Text(
        title,
        style: TextStyle(
          fontSize: fontsize ?? 18,
        ),
      ),
      trailing: Text(
        infoTitle,
        style: TextStyle(
          fontSize: fontsize ?? 18,
        ),
      ),
    );
  }
}
