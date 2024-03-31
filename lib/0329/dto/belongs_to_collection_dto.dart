class BelongsToCollectionDto {

  final int id;
  final String name;
  final String posterPath;
  final String backdropPath;

  const BelongsToCollectionDto({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'posterPath': posterPath,
      'backdropPath': backdropPath,
    };
  }

  factory BelongsToCollectionDto.fromJson(Map<String, dynamic> map) {
    return BelongsToCollectionDto(
      id: map['id'] as int,
      name: map['name'] as String,
      posterPath: map['poster_path'] as String,
      backdropPath: map['backdrop_path'] as String,
    );
  }
}