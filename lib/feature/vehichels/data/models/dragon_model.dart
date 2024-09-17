class DragonModel {
  final String image;
  final String description;
  final String name;
  final String type;
  final String fristFlight;
  final int orbitDuration;
  final String wikipedia;

  DragonModel({
    required this.image,
    required this.description,
    required this.name,
    required this.type,
    required this.fristFlight,
    required this.orbitDuration,
    required this.wikipedia,
  });

  factory DragonModel.fromJson(json) {
    return DragonModel(
      image: json['flickr_images'][0],
      description: json['description'],
      name: json['name'],
      type: json['type'],
      fristFlight: json['first_flight'],
      orbitDuration: json['orbit_duration_yr'],
      wikipedia: json['wikipedia'],
    );
  }
}
