import 'package:flutter/material.dart';
import 'package:weather_app/screens/widgets/background_widget.dart';
import 'package:weather_app/screens/widgets/text_widget.dart';
import 'package:weather_app/screens/widgets/weather_data_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: BackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  title: "some data",
                  size: 20,
                ),
                const SizedBox(height: 5),
                const TextWidget(
                  title: "Good morning",
                  size: 25,
                  fontWeight: FontWeight.bold,
                ),
                Image.asset("assets/1.png"),
                const Center(
                  child: TextWidget(
                    title: "21°C",
                    size: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Center(
                  child: TextWidget(
                    title: "Data",
                    size: 20,
                  ),
                ),
                const Center(
                  child: TextWidget(
                    title: "Date",
                    size: 20,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WeatherDataWidget(
                      imageUrl: "assets/11.png",
                      time: "5:03",
                      title: "Sunrise",
                    ),
                    WeatherDataWidget(
                      imageUrl: "assets/12.png",
                      time: "5:03",
                      title: "Sunrise",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WeatherDataWidget(
                      imageUrl: "assets/13.png",
                      time: "5:03",
                      title: "Sunrise",
                    ),
                    WeatherDataWidget(
                      imageUrl: "assets/14.png",
                      time: "5:03",
                      title: "Sunrise",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
