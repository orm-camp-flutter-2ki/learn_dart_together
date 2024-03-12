import 'package:learn_dart_together/0312/animal.dart';

class Cat extends Animal {
  // cat class field
  final String coat; // cat의 털 색상
  bool _nailClean = false; // cat의 발톱, true면 nail의 발톱을 깎인다.

  // super class constructor
  Cat({
    required super.name,
    required super.type,
    required super.birthYear,
    required super.sound,
    required this.coat,
  });

  // getter
  bool get nailClean => _nailClean;

  // setter
  set nailClean(bool nailValue) {
    _nailClean = nailValue;
    nailValue ? print('고양이 발톱을 정리했습니다.') : print('고양이 발톱이 단정합니다..');
    return;
  }

  // 골골송, 고유한 메서드
  void golgol() {
    print('${super.type}가 기분이 좋아 골골송을 부릅니다.');
  }
}

void main() {
  // 인스턴스 생성
  Cat cat = Cat(
      name: '치즈냥',
      type: '고양이',
      birthYear: 2019,
      sound: '냥냥냥냥냐냐냐냥',
      coat: 'Orange');

  // 속성 확인
  print('${cat.type}는 ${cat.coat}색 입니다.');
  cat.animalSound();
  cat.nailClean = true;
  cat.golgol();
  print('${cat.name}은 ${cat.birthYear}년도에 태어나 현재 ${cat.age}살 입니다.');
}
