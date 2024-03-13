abstract interface class Thing {
  //[?] interface
  // 필드는 없고, 메소드는 모두 {}가 빠진 추상 메소드

  // getter
  // `weight` 필드의 값을 외부로 반환
  double get weight;

  // setter
  // `weight` 필드의 값을 외부에서 설정
  // 구현 클래스에서 필요에 따라 setter를 오버라이드하여 구현
  set weight(double weightValue);
}
