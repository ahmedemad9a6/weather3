import 'package:weather3/model/weather_model.dart';

class WeatherState {}

class WeatherIntiState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  WeatherLoadedState({required this.weather});
  WeatherModel weather;
}

class WeatherFailureState extends WeatherState {}



// [1] Create State 
// [2] Create Cubit 
// [3] Create function