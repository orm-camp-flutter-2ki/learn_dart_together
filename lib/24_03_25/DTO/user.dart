class User {
  final String name;
  final String email;
  final num latitude;
  final num longitude;

  const User({
    required this.name,
    required this.email,
    required this.latitude,
    required this.longitude,
  });
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geography geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});
}

class Geography {
  final num lat;
  final num lng;

  Geography({required this.lat, required this.lng});
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({required this.name, required this.catchPhrase, required this.bs});
}
