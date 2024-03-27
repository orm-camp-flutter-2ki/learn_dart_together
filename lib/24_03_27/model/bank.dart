class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        phone = json['phone'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'phone': phone,
      };

  Bank copyWith({
    String? name,
    String? address,
    String? phone,
  }) {
    return Bank(
      name ?? this.name,
      address ?? this.address,
      phone ?? this.phone,
    );
  }

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
}
