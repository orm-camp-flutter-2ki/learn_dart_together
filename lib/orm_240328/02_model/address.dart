import 'geo.dart';

class Address {
  Geo geo;

  Address(this.geo);

  Address copyWith({
    Geo? geo,
  }) {
    return Address(geo ?? geo!);
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
