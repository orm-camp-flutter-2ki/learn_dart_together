abstract interface class Thing  {
  double get weight; //thig 클래스가 가지는 weight 속성의 값을 읽는 방법을 정의
  // 프러퍼티라서 requiredgkfEo 이니셜라이징
  set weight(double value); //thig 클래스가 가지는 weight 속성의 값을 설정하는 방법을 정의
}

//weight 속성값을 가져오고 설정할 때 특정 동작을 수행
//인터페이스에서는 필드선언하는거랑 메서드 기능을 구현하지 않음 청사진 처럼 설계도임