class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company(
    this.name,
    this.catchPhrase,
    this.bs,
  );

  Company copyWith({
    String? name,
    String? catchPhrase,
    String? bs,
  }) {
    return Company(
      name ?? this.name,
      catchPhrase ?? this.catchPhrase,
      bs ?? this.bs,
    );
  }

  //디코딩 함수: fromJson JSON 형식의 문자열을 객체나 데이터 구조로 역직렬화하는 기능
  Company.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  //toJson 데이터를 JSON 형식의 문자열로 직렬화(Serialization)하는 기능
  Map<String, dynamic> toJson() =>
      {'name': name, 'catchPhrase': catchPhrase, 'bs': bs};

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Company &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          catchPhrase == other.catchPhrase &&
          bs == other.bs;

  @override
  int get hashCode => name.hashCode ^ catchPhrase.hashCode ^ bs.hashCode;

  @override
  String toString() {
    return 'Address{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }
}
// void main() async {
//   List<Address> userAddressList = await UserApi().getUsers();
//   print(userAddressList);
// }
