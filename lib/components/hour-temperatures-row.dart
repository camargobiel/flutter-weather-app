import 'package:flutter/material.dart';
import 'package:wheater_app/components/hour-temperatures-item.dart';
import 'package:wheater_app/service.dart';

class HoursTemperaturesRow extends StatelessWidget {
  final Map<String, dynamic>? data;
  const HoursTemperaturesRow({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    const double imageSize = 36;

    return SizedBox(
      height: 90,
      child: Expanded(
        child: FutureBuilder<Map<String, dynamic>>(
            future: getForecast(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }

              return ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...snapshot.data!["data"].map(
                    (item) => HoursTemperatureItem(
                      "${item!["date_br"]}",
                      const Image(
                        image: AssetImage(
                          '../images/nublado.png',
                        ),
                        width: imageSize,
                        height: imageSize,
                      ),
                      "${item!["temperature"]["min"]}° - ${item!["temperature"]["max"]}°",
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
