import 'package:flutter/material.dart';

void main() => runApp(const WeatherApp());

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlue.shade100,
                  Colors.blue,
                ],
              ),
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "São José do Rio Preto",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.normal,
                        shadows: [
                          Shadow(
                            color: Colors.black45,
                            offset: Offset(2, 2),
                            blurRadius: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage(
                      '../images/sol.png',
                    ),
                    width: 96,
                    height: 96,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Ensolarado",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        shadows: [
                          Shadow(
                            color: Colors.black45,
                            offset: Offset(2, 2),
                            blurRadius: 10,
                          )
                        ]),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "33°",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 66,
                        fontWeight: FontWeight.w300,
                        shadows: [
                          Shadow(
                            color: Colors.yellow,
                            offset: Offset(2, 2),
                            blurRadius: 30,
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                ReportRow()
              ],
            )),
      ),
    );
  }
}

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

class ReportItem extends StatelessWidget {
  late String text;
  late Image image;
  late String value;

  ReportItem(
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
