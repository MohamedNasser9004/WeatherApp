class Sys {
  /*
  "type": 1,
    "id": 2514,
    "country": "EG",
    "sunrise": 1699071049,
    "sunset": 1699110375
   */
  String country;
  double type, id, sunrise, sunset;

  Sys(
      {required this.country,
      required this.type,
      required this.id,
      required this.sunrise,
      required this.sunset});

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      country: json["country"],
      type: double.parse(json["type"]),
      id: json["id"],
      sunrise: json["sunrise"],
      sunset: json["sunset"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "country": this.country,
      "type": this.type,
      "id": this.id,
      "sunrise": this.sunrise,
      "sunset": this.sunset,
    };
  }

}
