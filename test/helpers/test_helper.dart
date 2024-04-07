import 'package:flutter_clean_architecture_riverpod_template/features/weather/domain/repositories/weather_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';

@GenerateMocks(
  [
    Dio,
    WeatherRepository
  ]
)

void main(){}