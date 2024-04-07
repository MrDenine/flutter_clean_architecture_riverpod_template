

import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_riverpod_template/features/weather/domain/entities/weather.dart';
import 'package:flutter_clean_architecture_riverpod_template/features/weather/domain/usecases/get_current_weather.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
    GetCurrentWeatherUseCase? getCurrentWeatherUseCase;
    MockWeatherRepository? mockWeatherRepository;
    
    setUp((){
      mockWeatherRepository = MockWeatherRepository();
      getCurrentWeatherUseCase = GetCurrentWeatherUseCase(mockWeatherRepository!);
    });

    const testWeatherDetail = WeatherEntity(
      cityName: "Bangkok", 
      main: "Clouds", 
      description: "few clouds", 
      iconCode: "02d", 
      temperature: 300.2, 
      pressure: 900, 
      humidity: 72
    );

    const testCityName = "Bangkok";

    test('should get current weather detail from repository', 
    () async {
      
      // arrange
      when(
        mockWeatherRepository?.getCurrentWeather(testCityName)
      ).thenAnswer((_) async => const Right(testWeatherDetail));

      // act
      final result = await getCurrentWeatherUseCase?.execute(testCityName);

      // assert
      expect(result, const Right(testWeatherDetail));
      
    });
}