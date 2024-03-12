import 'package:flutter/material.dart';
import 'package:wheater_app/components/hour-temperatures-item.dart';

class HoursTemperaturesRow extends StatelessWidget {
  const HoursTemperaturesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double imageSize = 36;

    return SizedBox(
      height: 90,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            HoursTemperatureItem(
              "Agora",
              Image(
                image: AssetImage(
                  '../images/nublado.png',
                ),
                width: imageSize,
                height: imageSize,
              ),
              "18°",
            ),
            HoursTemperatureItem(
              "10AM",
              Image(
                image: AssetImage(
                  '../images/sol.png',
                ),
                width: imageSize,
                height: imageSize,
              ),
              "18°",
            ),
            HoursTemperatureItem(
              "11AM",
              Image(
                image: AssetImage(
                  '../images/vento.png',
                ),
                width: imageSize,
                height: imageSize,
              ),
              "18°",
            ),
            HoursTemperatureItem(
              "11AM",
              Image(
                image: AssetImage(
                  '../images/vento.png',
                ),
                width: imageSize,
                height: imageSize,
              ),
              "18°",
            ),
            HoursTemperatureItem(
              "11AM",
              Image(
                image: AssetImage(
                  '../images/vento.png',
                ),
                width: imageSize,
                height: imageSize,
              ),
              "18°",
            ),
          ],
        ),
      ),
    );
  }
}
