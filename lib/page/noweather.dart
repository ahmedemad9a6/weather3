import 'package:flutter/material.dart';

class NoWeather extends StatelessWidget {
  const NoWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        Spacer(
          flex: 1,
        ),
        Text("They are not weathers thy again later"),
        Text("Nice to meet you friend "),
        Spacer(
          flex: 1,
        ),
      ]),
    );
  }
}
