// 타입 봉인 효과
// Success, Error 타입만 가질 수 있도록 한다.
sealed class PhotoResult<T> {
  factory PhotoResult.success(T data) = Success; // Option

  factory PhotoResult.error(String message) = Error; // Option
}

class Success<T> implements PhotoResult<T> {
  final T data;

  Success(this.data);
}

class Error<T> implements PhotoResult<T> {
  final String message;

  Error(this.message);
}
