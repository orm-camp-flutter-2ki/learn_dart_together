class CompanyDto {

  final String? name;
  final String? catchPhrase;
  final String? bs;

  const CompanyDto({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'catchPhrase': catchPhrase,
      'bs': bs,
    };
  }

  factory CompanyDto.fromJson(Map<String, dynamic> map) {
    return CompanyDto(
      name: map['name'],
      catchPhrase: map['catchPhrase'],
      bs: map['bs'],
    );
  }
}