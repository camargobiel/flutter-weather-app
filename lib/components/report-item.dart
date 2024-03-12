import 'package:flutter/material.dart';

class ReportItem extends StatelessWidget {
  final String text;
  final Image image;
  final String value;

  const ReportItem(
    this.text,
    this.image,
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image,
        Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.normal,
              shadows: [
                Shadow(
                  color: Colors.black45,
                  offset: Offset(2, 2),
                  blurRadius: 10,
                )
              ]),
        ),
        Text(
          value,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.normal,
              shadows: [
                Shadow(
                  color: Colors.black45,
                  offset: Offset(2, 2),
                  blurRadius: 10,
                )
              ]),
        ),
      ],
    );
  }
}
