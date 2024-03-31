class ProductionCompanyDto {

  final int id;
  final String logoPath;
  final String name;
  final String originCountry;

  const ProductionCompanyDto({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'logoPath': logoPath,
      'name': name,
      'originCountry': originCountry,
    };
  }

  factory ProductionCompanyDto.fromJson(Map<String, dynamic> map) {
    return ProductionCompanyDto(
      id: map['id'] as int,
      logoPath: map['logo_path'] as String,
      name: map['name'] as String,
      originCountry: map['origin_country'] as String,
    );
  }
}


