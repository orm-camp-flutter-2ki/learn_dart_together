class User {
  final String name;
  final String phoneNum;
  final DateTime signUpDate;
  final String address;
  final DateTime birthDay;

  // List id 중복제거 안돼서
  final Set<int> history;

  const User({
    required this.name,
    required this.phoneNum,
    required this.signUpDate,
    required this.address,
    required this.birthDay,
    required this.history,
  });

  @override
  String toString() {
    return 'User{name: $name, phoneNum: $phoneNum, signUpDate: $signUpDate, address: $address, birthDay: $birthDay, history: $history}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          phoneNum == other.phoneNum &&
          signUpDate == other.signUpDate &&
          address == other.address &&
          birthDay == other.birthDay &&
          history == other.history;

  @override
  int get hashCode =>
      name.hashCode ^
      phoneNum.hashCode ^
      signUpDate.hashCode ^
      address.hashCode ^
      birthDay.hashCode ^
      history.hashCode;

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'phoneNum': this.phoneNum,
      'signUpDate': this.signUpDate,
      'address': this.address,
      'birthDay': this.birthDay,
      'history': this.history,
    };
  }
}
