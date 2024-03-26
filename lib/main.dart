import 'package:flutter/material.dart';
import 'package:wheater_app/components/hour-temperatures-row.dart';
import 'package:wheater_app/components/report-row.dart';
import 'package:wheater_app/service.dart';

void main() => runApp(const WeatherApp());

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<Map<String, dynamic>>(
            future: getWeather(),
            builder: (context, snapshot) {
              var colors = [
                Colors.lightBlue.shade300,
                Colors.blue.shade900,
              ];

              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }
              bool isCloudy =
                  snapshot.data!["data"]["condition"] == "Céu encoberto";
              if (isCloudy) {
                colors = [
                  Colors.black45,
                  Colors.black87,
                ];
              }

              return Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: colors,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          snapshot.data!["name"],
                          style: const TextStyle(
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
                      Column(
                        children: [
                          const Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage(
                                '../images/sol.png',
                              ),
                              width: 96,
                              height: 96,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              snapshot.data!["data"]["condition"],
                              style: const TextStyle(
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
                              "${snapshot.data!['data']['temperature']}°",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 66,
                                  fontWeight: FontWeight.w300,
                                  shadows: [
                                    Shadow(
                                      color: isCloudy
                                          ? Colors.black12
                                          : Colors.yellow,
                                      offset: const Offset(2, 2),
                                      blurRadius: 30,
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      ReportRow(data: snapshot.data),
                      HoursTemperaturesRow(data: snapshot.data)
                    ],
                  ));
            }),
      ),
    );
  }
}
