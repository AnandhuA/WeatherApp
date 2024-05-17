import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitialstate()) {
    on<FeatchingWeatherEvent>((event, emit) async {
      emit(WeatherLoadaingState());
      try {
        WeatherFactory weatherFactory = WeatherFactory(
            "577bc43b9c043958bf007ff53405c1c0",
            language: Language.ENGLISH);

        Weather weather = await weatherFactory.currentWeatherByLocation(
          event.position.latitude,
          event.position.longitude,
        );

        emit(WeatherSuccessState(weather: weather));
      } catch (e) {
        emit(WeatherErrorState());
      }
    });
  }
}
