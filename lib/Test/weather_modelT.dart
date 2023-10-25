// import 'package:flutter/foundation.dart';

// class WeatherModelT {
//   final String cityName;
//   final double temp;
//   final double maxtemp;
//   final double mintemp;
//   final String weatherCondition;

//   WeatherModelT(
//       {required this.cityName,
//       required this.temp,
//       required this.maxtemp,
//       required this.weatherCondition,
//       required this.mintemp});

//   factory WeatherModelT.json(fullMap) {
//     return WeatherModelT(
//       cityName: fullMap['location']['country'],
//       temp: fullMap['forecast']['forecastday'][0]['day']['avgtemp_c'],
//       maxtemp: fullMap['forecast']['forecastday'][0]['day']['maxtemp_f'],
//       mintemp: fullMap['forecast']['forecastday'][0]['day']['mintemp_f'],
//       weatherCondition: fullMap['forecast']['forecastday'][0]['day']
//           ['condition']['text'],
//     );
//   }
// }
