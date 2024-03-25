class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final Address address;
  final String phone;
  final String company;

  User(
    this.id,
    this.name,
    this.userName,
    this.email,
    this.address,
    this.phone,
    this.company,
  );

  User copyWith({
    int? id,
    String? name,
    String? userName,
    String? email,
    Address? address,
    String? phone,
    String? company,
  }) {
    return User(
      id ?? this.id,
      name ?? this.name,
      userName ?? this.userName,
      email ?? this.email,
      address ?? this.address,
      phone ?? this.phone,
      company ?? this.company,
    );
  }

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        name = json['name'] as String,
        userName = json['username'] as String,
        email = json['email'] as String,
        address = Address.fromJson(json['address'] ?? []),
        phone = json['phone'] as String,
        company = json['company']['name'] as String;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'userName': userName,
        'email': email,
        'address': address,
        'phone': phone,
        'company': company,
      };

  @override
  String toString() {
    return 'User{id: $id, name: $name, userName: $userName, email: $email, address: $address, phone: $phone, company: $company}';
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
          company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      userName.hashCode ^
      email.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      company.hashCode;
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipCode;

  Address(
    this.street,
    this.suite,
    this.city,
    this.zipCode,
  );

  Address copyWith({
    String? street,
    String? suite,
    String? city,
    String? zipCode,
  }) {
    return Address(
      street ?? this.street,
      suite ?? this.suite,
      city ?? this.city,
      zipCode ?? this.zipCode,
    );
  }

  Address.fromJson(Map<String, dynamic> json)
      : street = json['street'] as String,
        suite = json['suite'] as String,
        city = json['city'] as String,
        zipCode = json['zipcode'] as String;

  Map<String, dynamic> toJson() => {
        'street': street,
        'suite': suite,
        'city': city,
        'zipcode': zipCode,
      };

  @override
  String toString() {
    return 'Address{street: $street, suite: $suite, city: $city, zipCode: $zipCode}';
  }

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
}
