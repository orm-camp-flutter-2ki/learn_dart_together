class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company(this.name, this.catchPhrase, this.bs);

  Company.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'catchPhrase': catchPhrase,
    'bs': bs
  };

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

  @override
  String toString() {
    return 'Company{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }

  Company copyWith({
    String? name,
    String? catchPhrase,
    String? bs
  }) {
    return Company(
        name ?? this.name,
        catchPhrase ?? this.catchPhrase,
        bs ?? this.bs
    );
  }
}