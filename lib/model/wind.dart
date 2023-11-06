class Wind{
  double speed , deg;

  Wind({required this.speed, required this.deg});

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: double.parse(json["speed"]),
      deg: json["deg"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "speed": this.speed,
      "deg": this.deg,
    };
  }
}