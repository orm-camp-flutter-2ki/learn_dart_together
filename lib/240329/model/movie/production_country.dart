import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'production_country.g.dart';

@JsonSerializable()
class ProductionCountry {
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  final String? name;

  const ProductionCountry({this.iso31661, this.name});

  @override
  String toString() => 'ProductionCountry(iso31661: $iso31661, name: $name)';

  factory ProductionCountry.fromJson(Map<String, dynamic> json) {
    return _$ProductionCountryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductionCountryToJson(this);

  ProductionCountry copyWith({
    String? iso31661,
    String? name,
  }) {
    return ProductionCountry(
      iso31661: iso31661 ?? this.iso31661,
      name: name ?? this.name,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ProductionCountry) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => iso31661.hashCode ^ name.hashCode;
}
