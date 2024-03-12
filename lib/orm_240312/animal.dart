class Animal {
  String type = '종류';
  String sound = '소리';

  Animal(
    this.type,
    this.sound,
  );
}

class Dog extends Animal{
  final String species;
  Dog(super.type, super.sound ,this.species);

  void TypeAnimal(){
    type = '포유류';
  }
  void SoundAnimal(){
    sound = '멍멍';
  }

}
class Cat extends Animal{
  final String species;
  Cat(super.type, super.sound, this.species);

  void TypeAnimal(){
    type = '포유류';
  }
  void SoundAnimal(){
    sound = '냐냐옹';
  }
}
class Bird extends Animal{
  final String wing;
  Bird(super.type, super.sound, this.wing);

  void TypeAnimal(){
    type = '조류';
  }
  void SoundAnimal(){
    sound = '짹';
  }
}