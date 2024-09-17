class RocketModel {
  final String image;
  final String description;
  final String name;
  final String type;
  final String fristFlight;
  final int cost;
  final String wikipedia;

  RocketModel({
    required this.image,
    required this.description,
    required this.name,
    required this.type,
    required this.fristFlight,
    required this.cost,
    required this.wikipedia,
  });

  factory RocketModel.fromJson(json) {
    return RocketModel(
      image: json['flickr_images'][0],
      description: json['description'],
      name: json['name'],
      type: json['type'],
      fristFlight: json['first_flight'],
      cost: json['cost_per_launch'],
      wikipedia: json['wikipedia'],
    );
  }
}
