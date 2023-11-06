import 'package:weatherapp/model/cloud.dart';
import 'package:weatherapp/model/coord.dart';
import 'package:weatherapp/model/main_weather.dart';
import 'package:weatherapp/model/sys.dart';
import 'package:weatherapp/model/weather.dart';

class CurrentWeatherData {
  Coord? coord;
  List<Weather>? weather;
  MainWeather? mainWeather;
  Cloud? cloud;
  Sys? sys;
  String? base;
  String? name;
  int? dt;
  int? id;
  int? cod;
  int? timezone;
  int? visibility;

  CurrentWeatherData(
      {this.coord,
      this.weather,
      this.mainWeather,
      this.cloud,
      this.sys,
      this.base,
      this.name,
      this.dt,
      this.id,
      this.cod,
      this.timezone,
      this.visibility});

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherData(
      coord: Coord.fromJson(json["coord"]),
      weather: List<Weather>.of(json["weather"])
          .map((i) => i /* can't generate it properly yet */)
          .toList(),
      mainWeather: MainWeather.fromJson(json["mainWeather"]),
      cloud: Cloud.fromJson(json["cloud"]),
      sys: Sys.fromJson(json["sys"]),
      base: json["base"],
      name: json["name"],
      dt: int.parse(json["dt"]),
      id: int.parse(json["id"]),
      cod: int.parse(json["cod"]),
      timezone: int.parse(json["timezone"]),
      visibility: int.parse(json["visibility"]),
    );
  }
//
}
