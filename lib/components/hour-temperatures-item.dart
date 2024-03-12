import 'package:flutter/material.dart';

class HoursTemperatureItem extends StatelessWidget {
  final String text;
  final Image image;
  final String value;

  const HoursTemperatureItem(
    this.text,
    this.image,
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 39),
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
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
      ),
    );
  }
}
