import 'package:flutter/material.dart';
import 'package:wheater_app/components/hour-temperatures-item.dart';

class HoursTemperaturesRow extends StatelessWidget {
  const HoursTemperaturesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        HoursTemperatureItem(
          "Agora",
          const Image(
            image: AssetImage(
              '../images/nublado.png',
            ),
            width: 50,
            height: 50,
          ),
          "18°",
        ),
        HoursTemperatureItem(
          "10AM",
          const Image(
            image: AssetImage(
              '../images/sol.png',
            ),
            width: 50,
            height: 50,
          ),
          "18°",
        ),
        HoursTemperatureItem(
          "11AM",
          const Image(
            image: AssetImage(
              '../images/vento.png',
            ),
            width: 50,
            height: 50,
          ),
          "18°",
        ),
        HoursTemperatureItem(
          "11AM",
          const Image(
            image: AssetImage(
              '../images/vento.png',
            ),
            width: 50,
            height: 50,
          ),
          "18°",
        ),
        HoursTemperatureItem(
          "11AM",
          const Image(
            image: AssetImage(
              '../images/vento.png',
            ),
            width: 50,
            height: 50,
          ),
          "18°",
        ),
      ],
    );
  }
}
