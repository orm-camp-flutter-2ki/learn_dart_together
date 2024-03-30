import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'production_company.g.dart';

@JsonSerializable()
class ProductionCompany {
  final int? id;
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  final String? name;
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  const ProductionCompany({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  @override
  String toString() {
    return 'ProductionCompany(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  factory ProductionCompany.fromJson(Map<String, dynamic> json) {
    return _$ProductionCompanyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductionCompanyToJson(this);

  ProductionCompany copyWith({
    int? id,
    String? logoPath,
    String? name,
    String? originCountry,
  }) {
    return ProductionCompany(
      id: id ?? this.id,
      logoPath: logoPath ?? this.logoPath,
      name: name ?? this.name,
      originCountry: originCountry ?? this.originCountry,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ProductionCompany) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^ logoPath.hashCode ^ name.hashCode ^ originCountry.hashCode;
}
