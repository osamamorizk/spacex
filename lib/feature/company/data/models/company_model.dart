class CompanyModel {
  final String website;
  final String twitter;
  final String founder;
  final int foundedYear;
  final int employes;
  final String summary;

  CompanyModel({
    required this.website,
    required this.twitter,
    required this.founder,
    required this.foundedYear,
    required this.employes,
    required this.summary,
  });

  factory CompanyModel.fromJson(json) {
    return CompanyModel(
      website: json['links']['website'],
      twitter: json['links']['twitter'],
      founder: json['founder'],
      foundedYear: json['founded'],
      employes: json['employees'],
      summary: json['summary'],
    );
  }
}
