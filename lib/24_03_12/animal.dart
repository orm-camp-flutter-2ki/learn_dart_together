class Animal {
  String _type;

  Animal(this._type);

  void sound() => print('동물동물');
}

class Dog extends Animal {
  Dog(super.type);

  @override
  void sound() => print('멍멍');

  void bark() => print('왈왈');
}

class Cat extends Animal {
  Cat(super.type);

  @override
  void sound() => print('냐옹');
}
