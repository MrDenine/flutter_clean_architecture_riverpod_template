import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_riverpod_template/core/core.dart';
import 'package:flutter_clean_architecture_riverpod_template/features/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure,WeatherEntity>> getCurrentWeather(String cityName);
}