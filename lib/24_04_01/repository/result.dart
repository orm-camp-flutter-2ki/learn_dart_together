sealed class Result<T> {
  factory Result.success(T data) = Success; // 클래스를 넣음.
  // 생성자가 대신 호출된다.
  factory Result.error(String message) = Error; // 네임드 생성자 .
}

class Success<T> implements Result<T> {
  // 타입을 정할수 있다.
  final T data;

  Success(this.data);
}

class Error<T> implements Result<T> {
  final String message;

  Error(this.message);
}

//e.toString , throw exception , 빈껍데기 리턴  try catch로는
// result클래스를 사용하면 성공과 실패시 결과를 상자에 담아서 보낼수있따.
// 받는쪽에서 switch 를 사용해서 쓸수있다.
// 에러를 담을때 더 많이 담을수있다.
// 오버라이딩을 강제하기 위해서 sealed class로 만든다.

//sealed class Result 클래스
//Result 클래스를 구현하는 제네릭형 Success 클래스와 Error 클래스
