class Company {
  String companyName;
  String catchPhrase;
  String bs;

  Company(this.companyName, this.catchPhrase, this.bs);

  Map<String, dynamic> toJson() =>
      {'company_name': companyName, 'catchPhrase': catchPhrase};

  Company.fromJson(Map<String, dynamic> json)
      : companyName = json['companyName'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  Company copyWith({
    String? companyName,
    String? catchPhrase,
    String? bs,
  }) {
    return Company(
      companyName ?? companyName!,
      catchPhrase ?? catchPhrase!,
      bs ?? bs!,
    );
  }

  @override
  String toString() {
    return 'Company{company_name: $companyName, catchPhrase: $catchPhrase, bs: $bs}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Company &&
          runtimeType == other.runtimeType &&
          companyName == other.companyName &&
          catchPhrase == other.catchPhrase &&
          bs == other.bs;

  @override
  int get hashCode => companyName.hashCode ^ catchPhrase.hashCode ^ bs.hashCode;
}
