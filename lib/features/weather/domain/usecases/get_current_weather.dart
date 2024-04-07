import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_riverpod_template/core/core.dart';
import 'package:flutter_clean_architecture_riverpod_template/features/weather/domain/entities/weather.dart';
import 'package:flutter_clean_architecture_riverpod_template/features/weather/domain/repositories/weather_repository.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase(this.weatherRepository);

  Future<Either<Failure,WeatherEntity>> execute(String cityName){
    return weatherRepository.getCurrentWeather(cityName);
  }
}