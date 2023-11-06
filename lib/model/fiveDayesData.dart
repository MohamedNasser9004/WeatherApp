class FiveDayesData {
  String dateTime;
  int temp;

  FiveDayesData({required this.dateTime, required this.temp});

  Map<String, dynamic> toJson() {
    return {
      "dateTime": this.dateTime,
      "temp": this.temp,
    };
  }

  factory FiveDayesData.fromJson(Map<String, dynamic> json) {
    return FiveDayesData(
      dateTime: json["dateTime"],
      temp: int.parse(json["temp"]),
    );
  }
//
}
