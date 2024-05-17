part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class FeatchingWeatherEvent extends WeatherEvent {
  final Position position;

 const FeatchingWeatherEvent({required this.position});
   @override
  List<Object> get props => [position];
}
