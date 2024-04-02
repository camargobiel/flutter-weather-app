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
              var backgroundGradient = [
                Colors.lightBlue.shade300,
                Colors.blue.shade900,
              ];

              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }
              String icon = snapshot.data!["data"]["icon"];
              bool isCloudy = icon.contains("3") || icon.contains("4");
              bool isSunnyCloudy = icon.contains("2") || icon.contains("2r");
              if (isCloudy) {
                backgroundGradient = [
                  Colors.black45,
                  Colors.black87,
                ];
              }
              if (isSunnyCloudy) {
                backgroundGradient = [
                  Colors.blue.shade800,
                  Colors.black26,
                ];
              }

              return Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: backgroundGradient,
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
                          Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage(
                                '../images/${findImage(snapshot.data!["data"]["icon"])}.png',
                              ),
                              width: 130,
                              height: 130,
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

  findImage(String icon) {
    if (icon == "1") {
      return "sol";
    }
    if (icon == "2") {
      return "nublado";
    }
    return "sol";
  }
}
