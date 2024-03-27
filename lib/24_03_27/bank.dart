class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

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

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        // 'namê' 에러
        address = json['address'],
        // 'addrêss' 에러
        phone = json['phone'] as String; // 'ph0ne' 에러

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address, // 'αddress' 에러
        'phone': phone, // 'plone' 에러
      };
}
