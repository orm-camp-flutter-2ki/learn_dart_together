class Company {
  String name;
  String catchPhrase;
  String bs;

  Company(this.name, this.catchPhrase, this.bs);

  Map<String, dynamic> toJson() =>
      {'company_name': name, 'catchPhrase': catchPhrase};

  Company.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  Company copyWith({
    String? name,
    String? catchPhrase,
    String? bs,
  }) {
    return Company(
      name ?? name!,
      catchPhrase ?? catchPhrase!,
      bs ?? bs!,
    );
  }

  @override
  String toString() {
    return 'Company{company_name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Company &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          catchPhrase == other.catchPhrase &&
          bs == other.bs;

  @override
  int get hashCode => name.hashCode ^ catchPhrase.hashCode ^ bs.hashCode;
}
