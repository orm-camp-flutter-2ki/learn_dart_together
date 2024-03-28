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
}
