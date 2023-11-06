import 'package:get/get.dart';
import 'package:weatherapp/model/currentWeatherData.dart';
import 'package:weatherapp/model/fiveDayesData.dart';
import 'package:weatherapp/service/weatherService.dart';

class HomeController extends GetxController {
  String? city;

  HomeController({this.city});

  CurrentWeatherData currentWeatherData = CurrentWeatherData();
  List<FiveDayesData> fiveDayData =[];
  List<CurrentWeatherData> dataList =[];

  @override
  void onInit() {
    getTopFiveCites();
    initState();
    super.onInit();
  }

  void updateWeather(){
    initState();
  }

  void initState() {
    getCurrentWeatherData();
    getFiveDaysData();
  }


  void getCurrentWeatherData() {
    WeatherService(city: city).getCurrentWeatherData(onSuccess: (data){
      currentWeatherData = data;
      update();
    },
    onError: (error){
      print(error);
      update();
    }
    );
  }

  void getTopFiveCites() {
    WeatherService(city: city).getFiveThreeHourForcastData(
        onSuccess: (data){
      fiveDayData = data;
      update();
    },
        onError: (error){
          print(error);
          update();
        }
    );
  }


  void getFiveDaysData() {
    List<String> cities = [
      'zagazig',
      'cairo',
      'alexandria',
      'ismailia',
      'fayoum'
    ];
    cities.forEach((c) {
      WeatherService(city: '$c').getCurrentWeatherData(onSuccess: (data) {
        dataList.add(data);
        update();
      }, onError: (error) {
        print(error);
        update();
      });
    });
  }





}
