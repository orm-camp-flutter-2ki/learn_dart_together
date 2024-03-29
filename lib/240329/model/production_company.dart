import 'package:json_annotation/json_annotation.dart';

part 'production_company.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductionCompany {
  final num id;
  final String logoPath;
  final String name;
  final String originCountry;

  const ProductionCompany({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  factory ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyToJson(this);
}
