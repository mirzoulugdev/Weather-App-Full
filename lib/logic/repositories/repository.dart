import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:weather_app/constants/api_constants.dart';
import 'package:weather_app/model/weather_model.dart';

class Repository {
  Future<WeatherModel> getData({required String cityName}) async {
    final String apiKey = ApiConstants.API_KEY;
    final String baseurl = ApiConstants.BASE_URL;
    final url = Uri.parse("$baseurl?key=$apiKey&q=$cityName&days=7");

    try {
      final response = await http.get(url);
      print(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> body = jsonDecode(response.body);
        final WeatherModel data = WeatherModel.fromJson(body);

        return data;
      } else {
        throw Exception("noma'lumo xatolik yuz berdi");
      }
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}
