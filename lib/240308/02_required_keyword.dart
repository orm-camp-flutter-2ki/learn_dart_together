class Sword {
  String name;
  int damage;

  // required 키워드를 사용하여 생성자의 named parameter 에서 필드값을 필수로 만듬
  Sword({
    required this.name,
    required this.damage
  });
}