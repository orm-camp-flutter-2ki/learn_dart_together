class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        //type 'Null' is not a subtype of type 'String' in type cast 이여서 KEY값 잘못된것 확인
        address = json['address'],
        phone = json['phone'] as String;

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'phone': phone, // key형태 다른것확인
      };
}
