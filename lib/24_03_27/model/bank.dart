class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String, // namê -> name 수정
        address = json['addrêss'], // addrêss -> address 수정
        phone = json['ph0ne'] as String; // ph0ne -> phone 수정

  Map<String, dynamic> toJson() => {
    'name': name,
    'address': address, // αddress -> address 수정
    'phone': phone, // plone -> phone 수정
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

final givenList = [
  {
    "name": "홍길동",
    "address": "서울시 어쩌구 저쩌구",
    "phone": "010-1111-2222"
  }
];

void main() {

}