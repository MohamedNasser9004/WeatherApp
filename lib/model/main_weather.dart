class MainWeather{
  /*
  "temp": 305.57,
    "feels_like": 303.47,
    "temp_min": 305.05,
    "temp_max": 305.57,
    "pressure": 1012,
    "humidity": 19
   */
  double temb , feels_link , temp_min , temp_max , pressure , humidity ;

  MainWeather(
      {required this.temb,
      required this.feels_link,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity});

  factory MainWeather.fromJson(Map<String, dynamic> json) {
    return MainWeather(
      temb: double.parse(json["temb"]),
      feels_link: json["feels_link"],
      temp_min: json["temp_min"],
      temp_max: json["temp_max"],
      pressure: json["pressure"],
      humidity: json["humidity"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "temb": this.temb,
      "feels_link": this.feels_link,
      "temp_min": this.temp_min,
      "temp_max": this.temp_max,
      "pressure": this.pressure,
      "humidity": this.humidity,
    };
  }
}