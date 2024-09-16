class LaunchesModel {
  final String name;
  final String date;
  final String rocket;
  final String? webcastUrl;
  final String payloads;
  final String image;

  LaunchesModel({
    required this.image,
    required this.payloads,
    required this.name,
    required this.date,
    required this.rocket,
    required this.webcastUrl,
  });

  factory LaunchesModel.fromJson(json) {
    return LaunchesModel(
      name: json['name'],
      date: json['date_utc'],
      image: json['links']['patch']['small'],
      rocket: json['rocket'],
      webcastUrl: json['links']['webcast'],
      payloads: json['payloads'][0],
    );
  }
}
