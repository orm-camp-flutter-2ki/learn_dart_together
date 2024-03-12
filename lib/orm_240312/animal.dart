class Animal {
  String type = '종류';
  String sound = '소리';

  Animal(
    this.type,
    this.sound,
  );
}

class Dog extends Animal{
  Dog(super.type, super.sound);

  void TypeAnimal(){
    type = '개';
  }
  void SoundAnimal(){
    sound = '멍멍';
  }

}
class Cat extends Animal{
  Cat(super.type, super.sound);

  void TypeAnimal(){
    type = '포유류';
  }
  void SoundAnimal(){
    sound = '냐냐옹';
  }
}