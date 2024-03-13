@startuml

class Animal {
  +String type
  +String sound
  +animalSound(): void
}

class Dog {
  +dogSound(): void
}

class Cat {
  +catSound(): void
}

class Bird {
  +birdSound(): void
}

Animal <|-- Dog
Animal <|-- Cat
Animal <|-- Bird

@enduml

// class Animal {
//   String type;
//   String sound;

//   Animal(
//     this.type,
//     this.sound,
//   );

//   void animalSound() {
//     print('$type = $sound');
//   }
// }

// class Dog extends Animal {
//   Dog(super.type, super.sound);

//   void dogSound() {
//     print('피');
//   }
// }

// class Cat extends Animal {
//   Cat(super.type, super.sound);

//   void catSound() {
//     print('카');
//   }
// }

// class Bird extends Animal {
//   Bird(super.type, super.sound);

//   void birdSound() {
//     print('츄');
//   }
// }