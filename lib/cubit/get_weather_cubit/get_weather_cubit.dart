// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather3/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather3/model/weather_model.dart';
import 'package:weather3/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherIntiState());
  WeatherModel? weatherModel;

  getweather({required String cityName}) async {
    try {
      weatherModel = await Weather_services().getWeather(cityName: cityName);
      emit(WeatherLoadedState(weather: weatherModel!));
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
