class User {
  num id;
  String name;
  String email;
  String website;
  Company company;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.website,
      required this.company});

  User.copyWith({
    required User origin,
    num? id,
    String? name,
    String? email,
    String? website,
    Company? company
  })  : id = id ?? origin.id,
        name = name ?? origin.name,
        email = email ?? origin.email,
        website = website ?? origin.website,
        company = company ?? origin.company;

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        website = json['website'],
        company = Company.fromJson(json['company']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'email': email, 'website': website, 'company': company.toJson()};

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, website: $website, company: $company}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          website == other.website &&
          company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      website.hashCode ^
      company.hashCode;
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  Company.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  Company.copyWith(
      {required Company origin, String? name, String? catchPhrase, String? bs})
      : name = name ?? origin.name,
        catchPhrase = catchPhrase ?? origin.catchPhrase,
        bs = bs ?? origin.bs;

  Map<String, dynamic> toJson() =>
      {'name': name, 'catchPhrase': catchPhrase, 'bs': bs};

  @override
  String toString() {
    return 'Company{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
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
