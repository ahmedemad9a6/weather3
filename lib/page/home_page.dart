import 'package:flutter/material.dart';
import 'package:weather3/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather3/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather3/page/noweather.dart';
import 'package:weather3/page/search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather3/page/weatherinfobody.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SearchPage();
                  },
                ));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherIntiState) {
            return NoWeather();
          } else if (state is WeatherLoadedState) {
            return WeatherInfoBody(
              weather: state.weather,
            );
          } else
            return Text(" there are eroor");
        },
      ),
    );
  }
}
