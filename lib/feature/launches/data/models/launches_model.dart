class LaunchesModel {
  final String name;
  final DateTime? date;
  final String rocket;
  final String? webcastUrl;
  final int? flightNum;
  final String? image;

  LaunchesModel({
    required this.image,
    required this.flightNum,
    required this.name,
    required this.date,
    required this.rocket,
    required this.webcastUrl,
  });

  factory LaunchesModel.fromJson(json) {
    return LaunchesModel(
      name: json['name'],
      date: DateTime.tryParse(json['date_utc']),
      image: json['links']['patch']['small'],
      rocket: json['rocket'],
      webcastUrl: json['links']['webcast'],
      flightNum: json['flight_number'],
    );
  }
}
