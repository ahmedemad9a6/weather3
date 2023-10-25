class WeatherModel {
  final String cityName;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final DateTime date;
  final String icon;
  final String weatherCondition;

  WeatherModel(
      {required this.icon,
      required this.cityName,
      required this.temp,
      required this.date,
      required this.maxtemp,
      required this.weatherCondition,
      required this.mintemp});

  factory WeatherModel.json(fullMap) {
    return WeatherModel(
      icon: fullMap['forecast']['forecastday'][0]['day']['condition']['icon'],
      date: DateTime.parse(fullMap['location']['localtime']),
      cityName: fullMap['location']['name'],
      temp: fullMap['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp: fullMap['forecast']['forecastday'][0]['day']['maxtemp_f'],
      mintemp: fullMap['forecast']['forecastday'][0]['day']['mintemp_f'],
      weatherCondition: fullMap['forecast']['forecastday'][0]['day']
          ['condition']['text'],
    );
  }
}
