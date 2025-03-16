class Weather {
  final String cityName;
  final double temperature;
  final double tempMax;
  final double tempMin;
  final String description;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.tempMax,
    required this.tempMin,
    required this.description,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],  // ✅ Extracting city name
      temperature: (json['main']['temp'] as num).toDouble(),  // ✅ Extracting temperature
      tempMax: (json['main']['temp_max'] as num).toDouble(),  // ✅ Extracting max temp
      tempMin: (json['main']['temp_min'] as num).toDouble(),  // ✅ Extracting min temp
      description: json['weather'][0]['description'],  // ✅ Extracting weather description
    );
  }
}
