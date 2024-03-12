import 'package:flutter/material.dart';

import 'report-item.dart';

class ReportRow extends StatelessWidget {
  const ReportRow({
    super.key,
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
          "50",
        ),
        ReportItem(
          "Vento",
          const Image(
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
          const Image(
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
