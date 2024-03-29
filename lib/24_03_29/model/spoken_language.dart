class SpokenLanguage {
  String? englishName;
  String? iso6391;
  String? name;

  SpokenLanguage({
    this.englishName,
    this.iso6391,
    this.name,
  });

  @override
  String toString() {
    return 'SpokenLanguage{englishName: $englishName, iso6391: $iso6391, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpokenLanguage &&
          runtimeType == other.runtimeType &&
          englishName == other.englishName &&
          iso6391 == other.iso6391 &&
          name == other.name;

  @override
  int get hashCode => englishName.hashCode ^ iso6391.hashCode ^ name.hashCode;
}
