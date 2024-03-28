class CompanyDto {
  String? name;
  String? catchPhrase;
  String? bs;

  CompanyDto({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  CompanyDto.fromJson(dynamic json) {
    name = json['name'];
    catchPhrase = json['catchPhrase'];
    bs = json['bs'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['catchPhrase'] = catchPhrase;
    map['bs'] = bs;
    return map;
  }
}
