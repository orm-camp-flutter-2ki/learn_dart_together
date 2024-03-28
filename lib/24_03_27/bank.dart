class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  // 1. address <- as String 추가
  // 2. 오탈자 수정
  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        address = json['address'] as String,
        phone = json['phone'] as String;

  // 2. 오탈자 수정
  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'phone': phone,
      };
}
