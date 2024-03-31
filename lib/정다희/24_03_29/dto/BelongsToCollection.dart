/// id : 77816
/// name : "쿵푸팬더 시리즈"
/// poster_path : "/2QT6PuYXY0T2Ry9rX0JKQYTrbwx.jpg"
/// backdrop_path : "/uDosHOFFWtF5YteBRygHALFqLw2.jpg"

class BelongsToCollection {
  BelongsToCollection({
    this.id,
    this.name,
    this.posterPath,
    this.backdropPath,
  });

  BelongsToCollection.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
  }
  num? id;
  String? name;
  String? posterPath;
  String? backdropPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['poster_path'] = posterPath;
    map['backdrop_path'] = backdropPath;
    return map;
  }
}
