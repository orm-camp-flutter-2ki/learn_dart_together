class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final Address address;
  final String phoneNum;
  final String website;
  final Company company;

  User(this.id, this.name, this.userName, this.email, this.address,
      this.phoneNum, this.website, this.company);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'userName': userName,
        'email': email,
        'address': address.toJson(),
        'phoneNum': phoneNum,
        'website': website,
        'company': company.toJson(),
      };

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        userName = json['username'],
        email = json['email'],
        // class의 인스턴스로 객체를 address 속성에 할당
        address = Address.fromJson(json['address']),
        phoneNum = json['phone'],
        website = json['website'],

        // class의 인스턴스로 객체를 company 속성에 할당
        company = Company(json['company']['name']);

  User copyWith(
    int? id,
    String? name,
    String? userName,
    String? email,
    Address? address,
    String? phoneNum,
    String? website,
    Company? company,
  ) {
    return User(
        id ?? this.id,
        name ?? this.name,
        userName ?? this.userName,
        email ?? this.email,
        address ?? this.address,
        phoneNum ?? this.phoneNum,
        website ?? this.website,
        company ?? this.company);
  }

  @override
  String toString() {
    return 'User{id: $id, name: $name, userName: $userName, email: $email, address: $address, phoneNum: $phoneNum, website: $website, company: $company}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          userName == other.userName &&
          email == other.email &&
          address == other.address &&
          phoneNum == other.phoneNum &&
          website == other.website &&
          company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      userName.hashCode ^
      email.hashCode ^
      address.hashCode ^
      phoneNum.hashCode ^
      website.hashCode ^
      company.hashCode;
}

class Address {
  String street;
  String suite;
  String city;

  Address(this.street, this.suite, this.city);

  Map<String, dynamic> toJson() =>
      {'street': street, 'suite': suite, 'city': city};

  Address.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        suite = json['suite'],
        city = json['city'];
}

class Company {
  String name;

  Company(this.name);

  Map<String, dynamic> toJson() => {'name': name};
}
