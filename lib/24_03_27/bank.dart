class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      // "type 'null' is not a subtype of type 'String' in type cast"
      : name = json['name'] as String,
        // 'type 'Null' is not a subtype of type 'String'"
        address = json['address'],
        // type 'Null' is not a subtype of type 'String' in type cast
        phone = json['phone'] as String;

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address, // a 에서 특수 문자 들어간 거 바꾸기
        'phone': phone, // plone (x) , phone(o)
      };
}
