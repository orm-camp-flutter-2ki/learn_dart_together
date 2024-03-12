class Animal {
  String name;
  String type; // 동물 종
  String sound; // 동물 울음 소리
  final int birthYear; // 태어난 년도

  // 생성자
  Animal({
    required this.name,
    required this.type,
    required this.birthYear,
    required this.sound
  });

  // getter 프로퍼티
  // age는 나이를 계산하여 반환한다.
  int get age {
    return DateTime.now().year - birthYear; // 오늘 날짜의 년도 - 받은 년도
  }


  // 울음 소리 동작
  void animalSound() {
    print('[$type] $name : $sound');
  }


}
