class CrewModel {
  final String name;
  final String agency;
  final String status;
  final String wikipedia;
  final String image;
  CrewModel({
    required this.image,
    required this.name,
    required this.agency,
    required this.status,
    required this.wikipedia,
  });

  factory CrewModel.froJson(json) {
    return CrewModel(
      name: json['name'],
      agency: json['agency'],
      status: json['status'],
      wikipedia: json['wikipedia'],
      image: json['image'],
    );
  }
}
