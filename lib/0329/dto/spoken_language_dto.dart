class SpokenLanguageDto {

  final String englishName;
  final String iso_639_1;
  final String name;

  const SpokenLanguageDto({
    required this.englishName,
    required this.iso_639_1,
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'englishName': englishName,
      'iso_639_1': iso_639_1,
      'name': name,
    };
  }

  factory SpokenLanguageDto.fromJson(Map<String, dynamic> map) {
    return SpokenLanguageDto(
      englishName: map['english_name'] as String,
      iso_639_1: map['iso_639_1'] as String,
      name: map['name'] as String,
    );
  }
}