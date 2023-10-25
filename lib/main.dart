import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather3/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather3/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather3/page/home_page.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                  primarySwatch: getColor(
                      BlocProvider.of<GetWeatherCubit>(context)
                          .weatherModel
                          ?.weatherCondition)),
              home: Homepage(),
            );
          },
        );
      }),
    );
  }
}

MaterialColor getColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  } else if (condition == 'Sunny') {
    return Colors.yellow;
  } else if (condition == 'cloudy') {
    return Colors.lightBlue;
  } else {
    return Colors.brown;
  }
}
