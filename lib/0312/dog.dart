import 'package:learn_dart_together/0312/animal.dart';

class Dog extends Animal {
  // super class constructor
  Dog({
    required super.name,
    required super.type,
    required super.birthYear,
    required super.sound,
  });

  void eatGum() {
    print('${super.name}가 개껌을 먹었습니다.');
  }
}

void main() {
  // 인스턴스 생성
  Dog dog = Dog(name: '바둑이', type: '강아지', birthYear: 2020, sound: '으르르르릉 왈왈와왕왈');

  // 속성 확인
  print('${dog.type}의 이름은 ${dog.name} 입니다.');
  dog.animalSound();
  dog.eatGum();
  print('${dog.name}은 ${dog.birthYear}년도에 태어나 현재 ${dog.age}살 입니다.');
}
