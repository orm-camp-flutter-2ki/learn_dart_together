class CompanyModel {
  final String name;
  final String catchPhrase;
  final String bs;

  CompanyModel({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  @override
  String toString() {
    return 'name: $name, catchPhrase: $catchPhrase';
  }

  @override
  bool operator ==(Object other) {
    return super == other;
  }

  @override
  int get hashCode => super.hashCode;

  CompanyModel copyWith({
    String? name,
    String? catchPhrase,
    String? bs,
  }) {
    return CompanyModel(
        name: name ?? this.name,
        catchPhrase: catchPhrase ?? this.catchPhrase,
        bs: bs ?? this.bs);
  }

  CompanyModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  Map<String, dynamic> toJson() {
    return {
      'name' : name,
      'catchPhrase' : catchPhrase,
      'bs' : bs
    };
  }
}
