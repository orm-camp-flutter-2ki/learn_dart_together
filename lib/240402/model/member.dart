class Member {
  String name;
  DateTime? registrationDate;
  String address;
  String phoneNumber;
  DateTime? birthDate;

  Member(this.name, this.address, this.phoneNumber, this.birthDate);

  int getAge() {
    if (birthDate != null) {
      var now = DateTime.now();
      var age = now.year - birthDate!.year;
      if (now.month < birthDate!.month ||
          (now.month == birthDate!.month && now.day < birthDate!.day)) {
        age--;
      }
      return age;
    } else {
      return 0;
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'registrationDate': registrationDate != null
          ? '${registrationDate!.year}-${registrationDate!.month}-${registrationDate!.day}'
          : '',
      'address': address,
      'phoneNumber': phoneNumber,
      'birthDate': birthDate != null
          ? '${birthDate!.year}-${birthDate!.month}-${birthDate!.day}'
          : '',
      'age': getAge()
    };
  }
}
