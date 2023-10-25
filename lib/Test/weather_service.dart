// import 'package:dio/dio.dart';
// import 'package:weather3/Test/weather_modelT.dart';
// import 'package:weather3/model/weather_model.dart';

// class ServicsT {
//   Future<WeatherModel?> getWeather({required String cityName}) async {
//     Dio dio = Dio();

//     try {
//       Response response = await dio.get(
//           'http://api.weatherapi.com/v1/forecast.json?key=46767da230604af4b0f140544231610&q=$cityName&days=1&aqi=no&alerts=no');
//       WeatherModel weatherModelT = WeatherModel.json(response.data);
//       return weatherModelT;
//     } on DioException catch (e) {
//       final String err = e.response?.data['error']['message'] ?? "It was null ";
//       throw Exception(err);
//     }
//   }
// }
