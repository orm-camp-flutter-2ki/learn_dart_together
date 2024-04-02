sealed class Result<T> {
  factory Result.success(T data) = Success;

  factory Result.error(String e) = Error;
}

class Success<T> implements Result<T> {
  final T data;

  Success(this.data);
}

class Error<T> implements Result<T> {
  final String e;

  Error(this.e);
}
