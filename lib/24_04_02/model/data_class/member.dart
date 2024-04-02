class Member {
  final DateTime signUpdate;
  final String name;
  final String address;
  final String digits;
  final DateTime birthDay;

  int get age => DateTime.now().year - birthDay.year;

//<editor-fold desc="Data Methods">
  const Member({
    required this.signUpdate,
    required this.name,
    required this.address,
    required this.digits,
    required this.birthDay,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Member &&
          runtimeType == other.runtimeType &&
          signUpdate == other.signUpdate &&
          name == other.name &&
          address == other.address &&
          digits == other.digits &&
          birthDay == other.birthDay);

  @override
  int get hashCode =>
      signUpdate.hashCode ^
      name.hashCode ^
      address.hashCode ^
      digits.hashCode ^
      birthDay.hashCode;

  @override
  String toString() {
    return 'Member{ signUpdate: $signUpdate, name: $name, address: $address, digits: $digits, birthDay: $birthDay,}';
  }

  Member copyWith({
    DateTime? signUpdate,
    String? name,
    String? address,
    String? digits,
    DateTime? birthDay,
  }) {
    return Member(
      signUpdate: signUpdate ?? this.signUpdate,
      name: name ?? this.name,
      address: address ?? this.address,
      digits: digits ?? this.digits,
      birthDay: birthDay ?? this.birthDay,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'signUpdate': signUpdate.toString(),
      'name': name,
      'address': address,
      'digits': digits,
      'birthDay': birthDay.toString(),
    };
  }

  factory Member.fromJson(Map<String, dynamic> map) {
    return Member(
      signUpdate: map['signUpdate'] as DateTime,
      name: map['name'] as String,
      address: map['address'] as String,
      digits: map['digits'] as String,
      birthDay: map['birthDay'] as DateTime,
    );
  }
}
