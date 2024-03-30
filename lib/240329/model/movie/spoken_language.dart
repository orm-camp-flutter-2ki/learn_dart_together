import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'spoken_language.g.dart';

@JsonSerializable()
class SpokenLanguage {
  @JsonKey(name: 'english_name')
  final String? englishName;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  final String? name;

  const SpokenLanguage({this.englishName, this.iso6391, this.name});

  @override
  String toString() {
    return 'SpokenLanguage(englishName: $englishName, iso6391: $iso6391, name: $name)';
  }

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) {
    return _$SpokenLanguageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpokenLanguageToJson(this);

  SpokenLanguage copyWith({
    String? englishName,
    String? iso6391,
    String? name,
  }) {
    return SpokenLanguage(
      englishName: englishName ?? this.englishName,
      iso6391: iso6391 ?? this.iso6391,
      name: name ?? this.name,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SpokenLanguage) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => englishName.hashCode ^ iso6391.hashCode ^ name.hashCode;
}
