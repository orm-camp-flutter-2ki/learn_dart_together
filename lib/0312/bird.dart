import 'package:learn_dart_together/0312/animal.dart';

class Bird extends Animal{
// super class constructor
  Bird({
    required super.name,
    required super.type,
    required super.birthYear,
    required super.sound,
  });

  void flying() {
    print('${super.name}가 하늘을 날았습니다.');
  }
}

void main() {
  // 인스턴스 생성
  Bird bird = Bird(name: '짹짹이', type: '새', birthYear: 2023, sound: '짹짹째짹짹');

  // 속성 확인
  print('${bird.type}의 이름은 ${bird.name} 입니다.');
  bird.animalSound();
  bird.flying();
  print('${bird.name}은 ${bird.birthYear}년도에 태어나 현재 ${bird.age}살 입니다.');
}
