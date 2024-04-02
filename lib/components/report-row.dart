import 'package:flutter/material.dart';

import 'report-item.dart';

class ReportRow extends StatelessWidget {
  final Map<String, dynamic>? data;

  const ReportRow({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ReportItem(
          "Umidade",
          const Image(
            image: AssetImage(
              '../images/umidade.png',
            ),
            width: 50,
            height: 50,
          ),
          "${data!["data"]["humidity"]}%",
        ),
        ReportItem(
          "Velocidade do vento",
          const Image(
            image: AssetImage(
              '../images/vento.png',
            ),
            width: 50,
            height: 50,
          ),
          "${data!["data"]["wind_velocity"]}km/h",
        ),
        ReportItem(
          "Sensação térmica",
          const Image(
            image: AssetImage(
              '../images/sensacao.png',
            ),
            width: 50,
            height: 50,
          ),
          "${data!["data"]["sensation"]}°",
        ),
      ],
    );
  }
}
