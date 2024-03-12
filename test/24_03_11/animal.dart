class Animal {
  final String species;
  final String sound;
  final String mainLiving;

  Animal({required this.species, required this.sound, required this.mainLiving});

  void introduce() {
    print('이 동물은 $species이며 $mainLiving에 주로 서식합니다.');
  }
}
