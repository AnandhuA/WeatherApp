import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/bloc/weather_bloc.dart';
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
            child: BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                if (state is WeatherSuccessState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        title: state.weather.areaName ?? "",
                        size: 20,
                      ),
                      const SizedBox(height: 5),
                      TextWidget(
                        title: _getGreeting(DateTime.now().hour),
                        size: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      Center(
                        child:
                            getWeatherIcon(state.weather.weatherConditionCode!),
                      ),
                      Center(
                        child: TextWidget(
                          title:
                              "${state.weather.temperature?.celsius?.round()}°C",
                          size: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Center(
                        child: TextWidget(
                          title: state.weather.weatherMain?.toUpperCase() ?? "",
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: TextWidget(
                          title: DateFormat('EEEE dd - hh:mm a')
                              .format(state.weather.date ?? DateTime.now()),
                          size: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          WeatherDataWidget(
                            imageUrl: "assets/11.png",
                            time: DateFormat('h:mm a').format(
                                state.weather.sunrise ?? DateTime.now()),
                            title: "Sunrise",
                          ),
                          WeatherDataWidget(
                            imageUrl: "assets/12.png",
                            time: DateFormat('h:mm a')
                                .format(state.weather.sunset ?? DateTime.now()),
                            title: "Sunset",
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          WeatherDataWidget(
                            imageUrl: "assets/13.png",
                            time:
                                "${state.weather.tempMax?.celsius?.round()}° C",
                            title: "Temp Max",
                          ),
                          WeatherDataWidget(
                            imageUrl: "assets/14.png",
                            time:
                                "${state.weather.tempMin?.celsius?.round()}° C",
                            title: "Temp Min",
                          ),
                        ],
                      )
                    ],
                  );
                } else {
                  return const SizedBox(
                    child: Text("errror"),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

String _getGreeting(int hour) {
  if (hour < 12) {
    return 'Good morning';
  } else if (hour < 18) {
    return 'Good afternoon';
  } else {
    return 'Good evening';
  }
}

Widget getWeatherIcon(int code) {
  switch (code) {
    case >= 200 && < 300:
      return Image.asset('assets/1.png');
    case >= 300 && < 400:
      return Image.asset('assets/2.png');
    case >= 500 && < 600:
      return Image.asset('assets/3.png');
    case >= 600 && < 700:
      return Image.asset('assets/4.png');
    case >= 700 && < 800:
      return Image.asset('assets/5.png');
    case == 800:
      return Image.asset('assets/6.png');
    case > 800 && <= 804:
      return Image.asset('assets/7.png');
    default:
      return Image.asset('assets/7.png');
  }
}
