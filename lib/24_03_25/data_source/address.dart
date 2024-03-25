class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Map<String, dynamic> geo;

  Address(this.street, this.suite, this.city, this.zipcode, this.geo);

  Address.fromJson(Map<String, dynamic> json) // 네임드 생성자
      : street = json['street'],
        suite = json['suite'],
        city = json['city'],
        zipcode = json['zipcode'],
        geo = json['geo'];

  Map<String, dynamic> toJson() => {
        'street': street,
        'suite': suite,
        'city': city,
        'zipcode': zipcode,
        'geo': geo,
      };

  @override
  String toString() {
    return 'Address{street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo}';
  }
}
