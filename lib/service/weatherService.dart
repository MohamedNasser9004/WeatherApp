import 'package:weatherapp/api/apirepo.dart';
import 'package:weatherapp/model/currentWeatherData.dart';
import 'package:weatherapp/model/fiveDayesData.dart';

class WeatherService {
  String city;

  WeatherService({required this.city});

  //https://api.openweathermap.org/data/2.5/weather?q=cairo&lang=ar&mode=json&appid=a3826867a1723e910415cb4ee7de91ea

  String baseurl = "https://api.openweathermap.org/data/2.5";
  String apikey = "appid=a3826867a1723e910415cb4ee7de91ea";

  void getCurrentWeatherData({
    Function()? beforesend,
    Function(CurrentWeatherData currentWeatherData)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    //method body
    final url = "$baseurl/weather?=q$city&$apikey";
    ApiRepo(url: url, payload: null).getData(
      beforesend: () => beforesend!(),
      onSuccess: (data) => onSuccess!(CurrentWeatherData.fromJson(data)),
      onError: (error) => onError!(error),
    );
  }

  void getFiveThreeHourForcastData({
    //https://api.openweathermap.org/data/2.5/forecast?q=cairo&lang=ar&mode=xml&appid=a3826867a1723e910415cb4ee7de91ea
    Function()? beforesend,
    Function(List<FiveDayesData> fiveDaysData)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    //method body
    final url = "$baseurl/forecast?=q$city&$apikey";
    ApiRepo(url: url, payload: null).getData(
      beforesend: () => beforesend!(),
      onSuccess: (data) => {
        onSuccess!((data['list'] as List)
                ?.map((t) => FiveDayesData.fromJson(t))
                ?.toList() ??
            List.empty()),
      },
      onError: (error) => onError!(error),
    );
  }
}
