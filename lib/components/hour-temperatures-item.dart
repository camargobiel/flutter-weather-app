import 'package:flutter/material.dart';

class HoursTemperatureItem extends StatelessWidget {
  late String text;
  late Image image;
  late String value;

  HoursTemperatureItem(
    this.text,
    this.image,
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.normal,
              shadows: [
                Shadow(
                  color: Colors.black45,
                  offset: Offset(2, 2),
                  blurRadius: 10,
                )
              ]),
        ),
        image,
        Text(
          value,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
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
