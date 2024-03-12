import 'package:flutter/material.dart';
import 'package:wheater_app/components/hour-temperatures-row.dart';
import 'package:wheater_app/components/report-row.dart';

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
                  Colors.lightBlue.shade300,
                  Colors.blue.shade900,
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
                ReportRow(),
                SizedBox(
                  height: 60,
                ),
                HoursTemperaturesRow()
              ],
            )),
      ),
    );
  }
}
