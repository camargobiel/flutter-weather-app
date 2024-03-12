import 'package:flutter/material.dart';

import 'report-item.dart';

class ReportRow extends StatelessWidget {
  const ReportRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ReportItem(
          "Umidade",
          Image(
            image: AssetImage(
              '../images/umidade.png',
            ),
            width: 50,
            height: 50,
          ),
          "50",
        ),
        ReportItem(
          "Vento",
          Image(
            image: AssetImage(
              '../images/vento.png',
            ),
            width: 50,
            height: 50,
          ),
          "50",
        ),
        ReportItem(
          "Temperatura",
          Image(
            image: AssetImage(
              '../images/sensacao.png',
            ),
            width: 50,
            height: 50,
          ),
          "50",
        ),
      ],
    );
  }
}
