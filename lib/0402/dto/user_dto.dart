class UserDto {

  int? id;
  String? name;
  String? address;
  String? phone;
  String? signUpDate;
  String? birth;

  UserDto({
    this.id,
    this.name,
    this.address,
    this.phone,
    this.signUpDate,
    this.birth,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'phone': phone,
      'signUpDate': signUpDate,
      'birth': birth,
    };
  }

  factory UserDto.fromJson(Map<String, dynamic> map) {
    return UserDto(
      id: map['id'] as int,
      name: map['name'] as String,
      address: map['address'] as String,
      phone: map['phone'] as String,
      signUpDate: map['signUpDate'] as String,
      birth: map['birth'] as String,
    );
  }
}