part of 'weather_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitialstate extends WeatherState {}

final class WeatherLoadaingState extends WeatherState {}

final class WeatherErrorState extends WeatherState {}

final class WeatherSuccessState extends WeatherState {
  final Weather weather;

  const WeatherSuccessState({required this.weather});

    @override
  List<Object> get props => [weather];
}
