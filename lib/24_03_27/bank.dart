// 데이터 소스
// {
//  "name": "홍길동",
//  "address": "서울시 어쩌구 저쩌구",
//  "phone": "010-1111-2222"
// }

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
