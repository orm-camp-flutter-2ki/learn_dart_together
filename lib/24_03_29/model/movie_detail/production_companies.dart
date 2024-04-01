import 'package:json_annotation/json_annotation.dart';

part 'production_companies.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductionCompanies {
  final num id;
  @JsonKey(name: 'logo_path')
  final String logoPath;
  final String name;
  @JsonKey(name: 'origin_country')
  final String originCountry;

  ProductionCompanies({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  factory ProductionCompanies.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompaniesFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompaniesToJson(this);
}
