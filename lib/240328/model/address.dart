import 'geo.dart';

class Address {
  Geo geo;

  Address({required this.geo});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      geo: Geo.fromJson(json['geo']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'geo': geo.toJson(),
    };
  }

  Address copyWith({Geo? geo}) {
    return Address(
      geo: geo ?? this.geo,
    );
  }

  @override
  String toString() {
    return 'Address{geo: $geo}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address && runtimeType == other.runtimeType && geo == other.geo;

  @override
  int get hashCode => geo.hashCode;
}
