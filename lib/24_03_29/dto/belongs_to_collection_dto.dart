class BelongsToCollectionDto {
  num? id;
  String? name;
  String? posterPath;
  String? backdropPath;

  BelongsToCollectionDto({
    this.id,
    this.name,
    this.posterPath,
    this.backdropPath,
  });

  BelongsToCollectionDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['poster_path'] = posterPath;
    map['backdrop_path'] = backdropPath;
    return map;
  }
}
