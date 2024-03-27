class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      // key 값을 각 name, address, phone로 변경
      : name = json['name'] as String,
        address = json['address'],
        phone = json['phone'] as String;
  // plone -> phone으로 수정
  Map<String, dynamic> toJson() => {
        'name': name,
        // αddress -> address
        'address': address,
        // plone -> phone
        'phone': phone,
      };
}
