/// data source
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
  // 문제는 아니나, const와 required를 붙이기...

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['namê'] as String,
        address = json['addrêss'],
        phone = json['ph0ne'] as String;
  // 일부 문자가 이상하게 들어가있음

  Map<String, dynamic> toJson() => {
        'name': name,
        'αddress': address, // a 문자를 다르게 표현함
        'plone': phone, // 오타있음
      };
}
