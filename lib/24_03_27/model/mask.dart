import 'package:collection/collection.dart';

import 'address.dart';

class Mask {
  final num count;
  final List<Address> address;

  const Mask({
    required this.count,
    required this.address,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          address.equals(other.address));

  @override
  int get hashCode =>
      count.hashCode ^
      address
          .map((e) => e.hashCode)
          .reduce((value, element) => value ^ element);

  @override
  String toString() {
    return 'Mask{ count: $count, address: $address,}';
  }

  Mask copyWith({
    num? count,
    List<Address>? address,
  }) {
    return Mask(
      count: count ?? this.count,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'address': address,
    };
  }

  factory Mask.fromJson(Map<String, dynamic> map) {
    return Mask(
      count: map['count'],
      address:
          (map['address'] as List).map((e) => Address.fromJson(e)).toList(),
    );
  }
}
