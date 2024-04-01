// 타입 봉인 효과
// Success, Error 타입만 가질 수 있도록 한다.
sealed class Result<T> {
  factory Result.success(T data) = Success; // Option

  factory Result.error(String message) = Error; // Option
}

class Success<T> implements Result<T> {
  final T data;

  Success(this.data);
}

class Error<T> implements Result<T> {
  final String message;

  Error(this.message);
}
