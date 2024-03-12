class Slime {
  final int level = 10;

  int hp;
  String suffix;

  Slime(this.hp, this.suffix);

  void run() {
    print('[슬라임 $suffix 가 도망쳤다.]');
  }
}

void main(){
  Slime slime = Slime(20, 'A');
}