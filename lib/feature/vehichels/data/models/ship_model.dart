class ShipModel {
  final String? image;
  final String? description;
  final String name;
  final String type;
  final String role;
  final String homePort;
  final int? yearBuilt;
  final String? link;

  ShipModel({
    required this.role,
    required this.image,
    required this.description,
    required this.name,
    required this.type,
    required this.homePort,
    required this.yearBuilt,
    required this.link,
  });

  factory ShipModel.fromJson(json) {
    return ShipModel(
      image: json['image'],
      description: json['description'],
      name: json['name'],
      type: json['type'],
      homePort: json['home_port'],
      yearBuilt: json['year_built'],
      link: json['link'],
      role: json['roles'][0],
    );
  }
}
