class User {
  // final 로 무조건 선언해야 함.
  // view 쪽으로 처리할때는 copyWith 로 처리하게 될것임.
  final int id;
  final String name;
  final String userName;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  const User(
    this.id,
    this.name,
    this.userName,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  );

  @override
  String toString() {
    return 'User{id: $id, name: $name, userName: $userName, email: $email, address: $address, phone: $phone, website: $website, company: $company}';
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
          phone == other.phone &&
          website == other.website &&
          company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      userName.hashCode ^
      email.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      website.hashCode ^
      company.hashCode;

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        userName = json["username"],
        email = json["email"],
        address = Address.fromJson(json["address"]),
        phone = json["phone"],
        website = json["website"],
        company = Company.fromJson(json["company"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": userName,
        "email": email,
        "address": address,
        "phone": phone,
        "website": website,
        "company": company
      };

  // 동등한지 비교해보는 테스트 코드 작성하기
  User copyWith(
    int? id,
    String? userName,
    String? name,
    String? email,
    Address? address,
    String? phone,
    String? website,
    Company? company,
  ) {
    return User(
        id ?? this.id,
        name ?? this.name,
        userName ?? this.userName,
        email ?? this.email,
        address ?? this.address,
        phone ?? this.phone,
        website ?? this.website,
        company ?? this.company);
  }
}

class Address {
  String street;
  String suite;
  String city;
  String zipCode;

  Address(this.street, this.suite, this.city, this.zipCode);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          street == other.street &&
          suite == other.suite &&
          city == other.city &&
          zipCode == other.zipCode;

  @override
  int get hashCode =>
      street.hashCode ^ suite.hashCode ^ city.hashCode ^ zipCode.hashCode;

  @override
  String toString() {
    return 'Address{street: $street, suite: $suite, city: $city, zipCode: $zipCode}';
  }

  Address.fromJson(Map<String, dynamic> json)
      : street = json["street"],
        suite = json["suite"],
        city = json["city"],
        zipCode = json["zipCode"];

  Map<String, dynamic> toJson() =>
      {"street": street, "suite": suite, "city": city, "zipCode": zipCode};

  Address copyWith() {
    return Address(street, suite, city, zipCode);
  }
}

class Company {
  String name;
  String bs;

  Company(this.name, this.bs);

  Company.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        bs = json["bs"];

  Map<String, dynamic> toJson() => {"name": name, "bs": bs};
}
