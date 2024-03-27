class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  /* 문제가 있는 코드 : 키값이 잘못 됨
  Bank.fromJson(Map<String, dynamic> json)
      : name = json['namê'] as String,
        address = json['addrêss'],
        phone = json['ph0ne'] as String;

  Map<String, dynamic> toJson() => {
    'name': name,
    'αddress': address,
    'plone': phone,
  };
   */

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String, // namê -> name
        address = json['address'] as String, // addrêss -> address
        phone = json['phone'] as String; // ph0ne -> phone

  Map<String, dynamic> toJson() => {
    'name': name,
    'address': address, // αddress -> address
    'phone': phone, // plone -> phone
  };
}