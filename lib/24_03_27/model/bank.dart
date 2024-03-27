class Bank {
  final String name;
  final String address;
  final String phone;

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        address = json['address'],
        phone = json['phone'] as String;

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'phone': phone,
      };

  const Bank({
    required this.name,
    required this.address,
    required this.phone,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Bank &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          address == other.address &&
          phone == other.phone;

  @override
  int get hashCode => name.hashCode ^ address.hashCode ^ phone.hashCode;

  @override
  String toString() {
    return 'Bank{name: $name, address: $address, phone: $phone}';
  }

  Bank copyWith({
    String? name,
    String? address,
    String? phone,
  }) {
    return Bank(
      name: name ?? this.name,
      address: address ?? this.address,
      phone: phone ?? this.phone,
    );
  }
}
