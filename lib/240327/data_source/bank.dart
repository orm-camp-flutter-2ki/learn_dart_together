class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        address = json['address'],
        phone = json['phone'] as String;

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'phone': phone,
      };

  @override
  String toString() {
    return 'Bank{name: $name, address: $address, phone: $phone}';
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
