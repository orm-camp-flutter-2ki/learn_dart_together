class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        //namê 수정
        address = json['address'],
        //addrêss 수정
        phone = json['phone'] as String; //ph0ne 수정

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address, //adderess a가 이상했음
        'phone': phone, //여기의 Key값을 phone으로 수정함
      };
}
