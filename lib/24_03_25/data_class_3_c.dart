// Json Data의 변수 속성 정하기
// final 1
class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  // 생성자 제작
  // Json Data에 모두 값이 있어서 required 사용
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  // Json Data로 Company 제작
  // fromJson 2
  Company.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  // toString() 3
  @override
  String toString() {
    return 'Company{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }

  // == 4
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Company &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          catchPhrase == other.catchPhrase &&
          bs == other.bs;

  // hashCode 5
  @override
  int get hashCode => name.hashCode ^ catchPhrase.hashCode ^ bs.hashCode;

  // copyWith 6
  Company copyWith({
    String? name,
    String? catchPhrase,
    String? bs,
  }) {
    return Company(
      name: name ?? this.name,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
    );
  }
}
