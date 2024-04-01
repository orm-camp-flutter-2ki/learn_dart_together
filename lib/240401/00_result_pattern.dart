// sealed : 타입 봉인 효과를 가짐
// (enum 과 비슷한 효과 + 다른객체의 참조를 가질수 있음)
sealed class Result<T> {
  factory Result.success(T data) = Success;

  factory Result.error(String message) = Error;
}

class Success<T> implements Result<T> {
  final T data;

  Success(this.data);
}

class Error<T> implements Result<T> {
  final String message;

  Error(this.message);
}
