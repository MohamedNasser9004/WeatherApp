class Cloud{
  int all;

  Cloud({required this.all});

  Map<String, dynamic> toJson() {
    return {
      "all": this.all,
    };
  }

  factory Cloud.fromJson(Map<String, dynamic> json) {
    return Cloud(
      all: int.parse(json["all"]),
    );
  }
//
}