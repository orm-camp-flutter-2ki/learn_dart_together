class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

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

  Bank copyWith({String? name, String? address, String? phone}) {
    return Bank(
      name ?? this.name,
      address ?? this.address,
      phone ?? this.phone,
    );
  }

  Bank.fromJson(Map<String, dynamic> json)
      // json[name] 부분에 e가 아닌 ê가 들어가 있다.
      : name = json['name'] as String,
        // json[address] 부분에 e가 아닌 ê가 들어가 있다.
        address = json['address'],
        //json[phone] 부분에 o가 아닌 0이 들어가 있음
        phone = json['phone'] as String;

  Map<String, dynamic> toJson() => {
        'name': name,
        //'αddress' 부분이 a가 아닌 다른 것으로 들어가 있다.
        'address': address,
        //'phone' : phone 이어야하는데 h대신 l이 들어가 있다.
        'phone': phone,
      };
}
