class ProductionCountriesDto {
  ProductionCountriesDto({
    this.iso31661,
    this.name,
  });

  ProductionCountriesDto.fromJson(dynamic json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }

  String? iso31661;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_3166_1'] = iso31661;
    map['name'] = name;
    return map;
  }
}
