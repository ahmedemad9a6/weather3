import 'package:flutter/material.dart';
import 'package:weather3/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather3/main.dart';
import 'package:weather3/model/weather_model.dart';
import 'package:weather3/page/search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherInfoBody extends StatelessWidget {
  WeatherInfoBody({
    required this.weather,
    super.key,
  });
  WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    var weather = BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          getColor(weather.weatherCondition),
          getColor(weather.weatherCondition)[300]!,
          getColor(weather.weatherCondition)[50]!
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(weather.cityName),
              SizedBox(
                height: 10,
              ),
              Text('update at ${weather.date.hour}:${weather.date.minute}'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network('https:${weather.icon}'),
                  Text(weather.temp.toString()),
                  Column(
                    children: [
                      Text(weather.maxtemp.toString()),
                      Text(weather.mintemp.toString()),
                    ],
                  )
                ],
              ),
              Text(weather.weatherCondition)
            ],
          ),
        ));
  }
}

// DateTime stringToDateTime(String value) {
//   return DateTime.parse(value);
// }
