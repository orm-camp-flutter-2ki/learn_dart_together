class ProductionCompanyDto {
  num? id;
  String? logoPath;
  String? name;
  String? originCountry;

  ProductionCompanyDto({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  ProductionCompanyDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logoPath = json['logo_path'];
    name = json['name'];
    originCountry = json['origin_country'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['logo_path'] = logoPath;
    map['name'] = name;
    map['origin_country'] = originCountry;
    return map;
  }
}

