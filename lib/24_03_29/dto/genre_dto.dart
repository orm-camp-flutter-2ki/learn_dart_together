class GenreDto {
  num? id;
  String? name;

  GenreDto({
    this.id,
    this.name,
  });

  GenreDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}
