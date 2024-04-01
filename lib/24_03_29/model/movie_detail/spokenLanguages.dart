import 'package:json_annotation/json_annotation.dart';

part 'spokenLanguages.g.dart';

@JsonSerializable(explicitToJson: true)
class SpokenLanguages {
  @JsonKey(name: 'english_name')
  final String englishName;
  @JsonKey(name: 'iso_639_1')
  final String iso6391;
  final String name;

  SpokenLanguages({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  factory SpokenLanguages.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguagesFromJson(json);

  Map<String, dynamic> toJson() => _$SpokenLanguagesToJson(this);
}
