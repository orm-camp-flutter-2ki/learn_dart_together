class Company {
  String name;
  String catchPhrase;
  String bs;

  Company(this.name, this.catchPhrase, this.bs);

  Company.fromJson(Map<String, dynamic> json) // 네임드 생성자
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'catchPhrase': catchPhrase,
        'bs': bs,
      };

  @override
  String toString() {
    return 'Company{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }
}
