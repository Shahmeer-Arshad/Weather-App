import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather.dart';

class WeatherService {
  final String apiKey = '0312490c2e733d934b520919b1bac2cf';
  final String apiUrl = 'https://api.openweathermap.org';

  Future<Weather> fetchWeather() async {
    final response = await http.get(
      Uri.parse(
        '$apiUrl/data/2.5/weather?lat=25.1932024&lon=67.1554619&appid=$apiKey&units=metric',
      ),
    );

    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
