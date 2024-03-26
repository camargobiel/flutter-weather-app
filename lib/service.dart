import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = 'https://apiadvisor.climatempo.com.br';

const token = 'acc70c45acd8675f5b04ee3c2ff50acc';

String url = '$baseUrl/api/v1/weather/locale/3693/current?token=$token';

Future<Map<String, dynamic>> getWeather() async {
  http.Response response = await http.get(Uri.parse(url));
  print("batata doce");
  if (response.statusCode != 200) {
    throw response.body;
  }

  Map<String, dynamic> responseJson = json.decode(response.body);
  return responseJson;
}
