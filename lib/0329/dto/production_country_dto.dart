class ProductionCountryDto {

  final String iso_3166_1;
  final String name;

  const ProductionCountryDto({
    required this.iso_3166_1,
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'iso_3166_1': iso_3166_1,
      'name': name,
    };
  }

  factory ProductionCountryDto.fromJson(Map<String, dynamic> map) {
    return ProductionCountryDto(
      iso_3166_1: map['iso_3166_1'] as String,
      name: map['name'] as String,
    );
  }
}