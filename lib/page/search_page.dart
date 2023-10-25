import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather3/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather3/model/weather_model.dart';
import 'package:weather3/services/weather_services.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search '),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onSubmitted: (v) async {
              // print("you mint is ${c?.weatherCondition}");
              var getWeather = BlocProvider.of<GetWeatherCubit>(context);
              getWeather.getweather(cityName: v);
              WeatherModel weather =
                  await Weather_services().getWeather(cityName: v);
              print(weather.weatherCondition);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffix: const Icon(Icons.search),
                label: const Text('Enter city'),
                hintText: 'Enter your city please '),
          ),
        ),
      ),
    );
  }
}
