import 'current_weather_model.dart';
import 'forecast_model.dart';
import 'loaction_model.dart';

class WeatherDataModel {
  LocationModel? location;
  List<ForecastModel>? forecastedDays = [];
  CurrentWeatherModel? current;

  WeatherDataModel.fromMap(Map<String, dynamic> map) {
    location = LocationModel.fromMap(map["location"]);
    current = CurrentWeatherModel.fromMap(map["current"]);

    map["forecast"]["forecastday"].forEach((froecastmap) {
      forecastedDays!.add(ForecastModel.fromMap(froecastmap));
    });
  }
}
